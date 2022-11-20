-- Создаем таблицу Users
CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);

--SELECT * FROM users;

-- Создаем таблицу Items
CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);

--SELECT * FROM items;

-- Создаем таблицу Purchases
CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

WITH
	young_users_monthly_avg AS 
-- 2) найдем средние траты пользователей от 18 до 25 по месяцам
(SELECT
	mnth, ROUND(AVG(user_total), 2) as monthly_avg_bill
FROM 
  -- 1) найдем сумму трат каждого пользователя от 18 до 25 за месяц
  (SELECT	
      DATE_TRUNC('month', date) as mnth,
      purchases.userid,
      SUM(price) AS user_total
  FROM	
      users INNER JOIN purchases ON users.userid = purchases.userid
            INNER JOIN items ON items.itemid = purchases.itemid
  WHERE 
      age >= 18 AND age <= 25
  GROUP BY 
      mnth, purchases.userid
  ORDER BY	
      mnth) AS young_users_monthly_total
GROUP BY	
	mnth),

	middle_age_users_monthly_avg AS
-- 4) найдем средние траты пользователей от 26 до 35 по месяцам
(SELECT
	mnth, ROUND(AVG(user_total), 2) as monthly_avg_bill
FROM 
  -- 3) найдем сумму трат каждого пользователя от 26 до 35 за месяц
  (SELECT	
      DATE_TRUNC('month', date) as mnth,
      purchases.userid,
      SUM(price) AS user_total
  FROM	
      users INNER JOIN purchases ON users.userid = purchases.userid
            INNER JOIN items ON items.itemid = purchases.itemid
  WHERE 
      age >= 26 AND age <= 35
  GROUP BY 
      mnth, purchases.userid
  ORDER BY	
      mnth) AS middleage_users_monthly_total
GROUP BY	
	mnth)
-- 5) выведем средние ежемесячные траты обеих возрастных групп в одной табличке
SELECT
	y.mnth, y.monthly_avg_bill as avg_sum_1825, ma.monthly_avg_bill AS avg_sum_2635
FROM
	young_users_monthly_avg y INNER JOIN middle_age_users_monthly_avg ma ON y.mnth = ma.mnth
;



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

SELECT mnth as mnth_bestselling
FROM 
  (SELECT
      TO_CHAR(date, 'Month') AS mnth,
      SUM(price) as total, 
      DENSE_RANK() OVER(ORDER BY SUM(price) DESC) as rnk
  FROM
      users INNER JOIN purchases ON users.userid = purchases.userid
            INNER JOIN items ON items.itemid = purchases.itemid
  WHERE 
      age >= 35
  GROUP BY	
      mnth) as total_ranking_monthly
WHERE rnk = 1; 



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

SELECT itemid AS item_bestseller
FROM 
  (SELECT
      EXTRACT(YEAR FROM date) as y, 
      items.itemid, 
      SUM(price) as total, 
      DENSE_RANK() OVER(ORDER BY SUM(price) DESC) as rnk
  FROM	
      purchases INNER JOIN items ON purchases.itemid = items.itemid
  WHERE	
      EXTRACT(YEAR FROM date) = (SELECT MAX(EXTRACT(YEAR FROM date)) FROM purchases)
  GROUP BY
      y, items.itemid) as last_year_total_ranking_by_item
WHERE 
	rnk = 1;
    


-- Г) топ-3 товаров по выручке и их доля в общей выручке за любой год
WITH

	items_ranking_by_revenue AS 
(SELECT
      EXTRACT(YEAR FROM date) as y, 
      items.itemid as item, 
      SUM(price) as total_item, 
      DENSE_RANK() OVER(PARTITION BY EXTRACT(YEAR FROM date) 
                        ORDER BY SUM(price) DESC) as rnk
  FROM	
      purchases INNER JOIN items ON purchases.itemid = items.itemid
  GROUP BY
      y, items.itemid), 
      
      yearly_total AS 
(SELECT
	EXTRACT(YEAR FROM date) AS y, 
    SUM(price) as total_year
FROM
	purchases INNER JOIN items ON purchases.itemid = items.itemid
GROUP BY
	EXTRACT(YEAR FROM date))

SELECT
	r.y, item as top_3_items, 
    ROUND(total_item / total_year, 3) as "share"
FROM
	items_ranking_by_revenue r LEFT JOIN yearly_total yt ON r.y = yt.y
WHERE
	rnk <= 3;