-- Вопрос 1, отдел трафика
-- Мы хотим настроить таргетинг рекламы по полу и возрасту пользователей, чтобы закупать 
-- трафик максимально эффективно и прибыльно. На какой сегмент пользователей нам лучше 
-- всего настроить таргетинг?


-- Кто потратил больше всех (с NULL)?
WITH 
	paying_users_sex_age AS 
	(
	SELECT
		 user_id, amount, 
		 sex, age
	FROM 
		 (
		 SELECT 
			 user_id, amount
		 FROM
			 transactions
		 WHERE
			 status = 'success'
			 ) t 
	LEFT JOIN
		 (
		 SELECT 
			 id, sex, 
			 EXTRACT(YEAR FROM AGE(date_bd)) AS age
		 FROM 
			 users
		 WHERE
			 -- отфильтруем выбросы / ошибочные возрасты
			 EXTRACT(YEAR FROM AGE(date_bd)) < 100 OR 
			 EXTRACT(YEAR FROM AGE(date_bd)) IS NULL
		 ) u
	ON t.user_id = u.id 
		),

	total AS     
		(SELECT
			sex, age, SUM(amount) as total_amount
		FROM
			paying_users_sex_age
		GROUP BY
			age, sex
		ORDER BY
			total_amount DESC)
	SELECT
		sex, age, total_amount, 
		ROUND((total_amount / (SELECT SUM(total_amount) FROM total)) * 100, 2) AS prcnt
	FROM
		total;
		
		
		
-- Кто потратил больше всех (без NULL)?
WITH 
	paying_users_sex_age AS 
	(
	SELECT
		 user_id, amount, 
		 sex, age
	FROM 
		 (
		 SELECT 
			 user_id, amount
		 FROM
			 transactions
		 WHERE
			 status = 'success'
			 ) t 
	LEFT JOIN
		 (
		 SELECT 
			 id, sex, 
			 EXTRACT(YEAR FROM AGE(date_bd)) AS age
		 FROM 
			 users
		 WHERE
			 -- отфильтруем выбросы / ошибочные возрасты
			 EXTRACT(YEAR FROM AGE(date_bd)) < 100 OR 
			 EXTRACT(YEAR FROM AGE(date_bd)) IS NULL
		 ) u
	ON t.user_id = u.id 
	WHERE
		-- удаляем пустые значения
		sex IS NOT NULL AND age IS NOT NULL
		),

	total AS     
		(SELECT
			sex, age, SUM(amount) as total_amount
		FROM
			paying_users_sex_age
		GROUP BY
			age, sex
		ORDER BY
			total_amount DESC)
	SELECT
		sex, age, total_amount, 
		ROUND((total_amount / (SELECT SUM(total_amount) FROM total)) * 100, 2) AS prcnt
	FROM
		total;
		
-- Рекомендация

-- 1. Лучше всего настроить таргетинг на женщин 43 лет.

-- 2. Сегмент женщин от 43 до 48 лет - за вычетом 46 лет - наиболее прибыльный (около 
-- 38.25 % от общего объема покупок).

-- 3. К сожалению, в таблице очень много пропущенных данных (см. п. 4). В идеале было бы 
-- их каким-то образом "добрать" (например, проведя доп. анкетирование или по среднему 
-- возрасту друзей или по году окончания школы, если такое возможно).

-- 4. Из таблички с пропущенными значениями (см. п. 4) мы видим, что на втором месте по 
-- сумме транзакций находится женщина. Так что, если говорить о "широком" таргетинге, 
-- бОльшее внимание следует уделять женской аудитории, т.к. они приноят больше прибыли.