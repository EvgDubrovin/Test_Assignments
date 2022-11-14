-- Вопрос 2, отдел маркетинга
-- Мы хотим запустить программу лояльности с 5 уровнями. Уровень присваивается в зависимости 
-- от суммы потраченных пользователем денег. Какие пороги уровней сделать и почему?

-- 2.1. Разобъем по процентилям
-- Допущение: кто потратил больше медианного значения (50%), уже может претендовать на участие в программе лояльности.
-- Разбить на уровни можно равномерно (50-60-70-80-90). А я, в рамках эксперимента, сделаю так:
-- Уровень 1 - между 50-м и 70-м процентилем.
-- Уровень 2 - между 70-м и 80-м процентилем.
-- Уровень 3 - между 80-м и 90-м процентилем.
-- Уровень 4 - между 90-м и 95-м процентилем.
-- Уровень 5 - между 95-м и 100-м (max) процентилем.

WITH users_total AS
	(SELECT
		 user_id, SUM(amount) as total
	 FROM 
		 transactions
	 WHERE
		 status = 'success'
	 GROUP BY
		 user_id
	 ORDER BY
		 total DESC)
SELECT 
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY total) AS lvl_1, 
	PERCENTILE_DISC(0.7) WITHIN GROUP (ORDER BY total) AS lvl_2, 
	PERCENTILE_DISC(0.8) WITHIN GROUP (ORDER BY total) AS lvl_3, 
	PERCENTILE_DISC(0.9) WITHIN GROUP (ORDER BY total) AS lvl_4, 
	PERCENTILE_DISC(0.95) WITHIN GROUP (ORDER BY total) AS lvl_5
FROM
	users_total;
	
-- Выбранные процентили оказались не очень удачны, т.к. первые три уровня требуют траты очень маленькой суммы.
-- Попробуем так:
-- Уровень 1 - между 80-м и 85-м процентилем.
-- Уровень 2 - между 85-м и 90-м процентилем.
-- Уровень 3 - между 90-м и 95-м процентилем.
-- Уровень 4 - между 95-м и 99-м процентилем.
-- Уровень 5 - между 99-м и 100-м (max) процентилем.
WITH users_total AS
	(SELECT
		 user_id, SUM(amount) as total
	 FROM 
		 transactions
	 WHERE
		 status = 'success'
	 GROUP BY
		 user_id
	 ORDER BY
		 total DESC)
SELECT 
	PERCENTILE_DISC(0.8) WITHIN GROUP (ORDER BY total) AS lvl_1, 
	PERCENTILE_DISC(0.85) WITHIN GROUP (ORDER BY total) AS lvl_2, 
	PERCENTILE_DISC(0.9) WITHIN GROUP (ORDER BY total) AS lvl_3, 
	PERCENTILE_DISC(0.95) WITHIN GROUP (ORDER BY total) AS lvl_4, 
	PERCENTILE_DISC(0.99) WITHIN GROUP (ORDER BY total) AS lvl_5
FROM
	users_total;

-- Таким образом, выбранные уровни:
-- Level 1 - от 262
-- Level 2 - от 440
-- Level 3 - от 762
-- Level 4 - от 1389
-- Level 5 - от 7964



-- 2.2. Кто потратил больше среднего чека
-- Предлагаю не учитывать в дальнейших расчетах лидера трат, т.к. он потратил в 2.2 раза 
-- больше денег!, чем второе место. Лидер по покупкам будет получать максимальный 
-- уровень программы лояльности.
-- Level 5 - от 21120 (или просто лидер по покупкам).

-- Средний чек всех пользователей (за вычетом аномального лидера)
WITH users_total AS
	(SELECT
		 user_id, SUM(amount) as total
	 FROM 
		 transactions
	 WHERE
		 status = 'success'
	 GROUP BY
		 user_id
	 ORDER BY
		 total DESC)
SELECT 
	AVG(total)
FROM
	users_total
WHERE
	total < (SELECT MAX(total) FROM users_total);
-- Level 1 >= 380.42

-- И так еще 3 раза.
WITH users_total AS
	(SELECT
		 user_id, SUM(amount) as total
	 FROM 
		 transactions
	 WHERE
		 status = 'success'
	 GROUP BY
		 user_id
	 ORDER BY
		 total DESC)
SELECT 
	AVG(total)
FROM
	users_total
WHERE
	total < (SELECT MAX(total) FROM users_total) AND 
	total > 380.42;
-- Level 2 >= 1988.03

WITH users_total AS
	(SELECT
		 user_id, SUM(amount) as total
	 FROM 
		 transactions
	 WHERE
		 status = 'success'
	 GROUP BY
		 user_id
	 HAVING
		 SUM(amount) > 2298.56
	 ORDER BY
		 total DESC)
SELECT 
	AVG(total)
FROM
	users_total
WHERE
	total < (SELECT MAX(total) FROM users_total) AND 
	total > 1988.03;
-- Level 3 >= 5818

WITH users_total AS
	(SELECT
		 user_id, SUM(amount) as total
	 FROM 
		 transactions
	 WHERE
		 status = 'success'
	 GROUP BY
		 user_id
	 HAVING
		 SUM(amount) > 6623.37
	 ORDER BY
		 total DESC)
SELECT 
	AVG(total)
FROM
	users_total
WHERE
	total < (SELECT MAX(total) FROM users_total) AND 
	total > 5818;
-- Level 4 >= 8492.83

-- По методу "выше среднего" получилось:
-- Level 1 >= 380.42
-- Level 2 >= 1988.03
-- Level 3 >= 5818
-- Level 4 >= 8492.83
-- Level 5 >= 21120 (или лидер по покупкам).



-- 2.3. Loyalty score
-- loyalty_score = отношение суммы трат пользователя к общей сумме трат. Для удобства умножим на 100 
-- Первые 20 пользователей по тратам
WITH users_total_amount AS
	(SELECT
		 user_id, SUM(amount) as total
	 FROM 
		 transactions
	 WHERE
		 status = 'success'
	 GROUP BY
		 user_id
	 ORDER BY
		 total DESC)
SELECT
	user_id, total, 
	ROUND((total / (SELECT SUM(total) FROM users_total_amount))*100, 2) AS loyalty_score
FROM
	users_total_amount
LIMIT 20;
-- Установим необходимый минимум loyalty score в 1%. Тогда:
-- Level 1 >= 1% loyalty score
-- Level 2 >= 1.5% loyalty score
-- Level 3 >= 2% loyalty score
-- Level 4 >= 3% loyalty score
-- Level 5 >= 4% loyalty score



-- Рекомендация
-- 2.1. По процентилям (80-85-90-95-99):
-- Level 1 - от 262
-- Level 2 - от 440
-- Level 3 - от 762
-- Level 4 - от 1389
-- Level 5 - от 7964

-- 2.2. По методу "выше среднего":
-- Level 1 >= 380.42
-- Level 2 >= 1988.03
-- Level 3 >= 5818
-- Level 4 >= 8492.83
-- Level 5 = 21120 (или лидер по покупкам)

-- 2.3. По loyalty score:
-- Level 1 >= 1% loyalty score
-- Level 2 >= 1.5% loyalty score
-- Level 3 >= 2% loyalty score
-- Level 4 >= 3% loyalty score
-- Level 5 >= 4% loyalty score

-- 2.4. В конце концов, можно просто взять круглые суммы - так пользователям будет проще и 
-- понятнее, куда стремиться (чтобы стать участником программы лояльности):
-- Level 1 >= 500
-- Level 2 >= 2000
-- Level 3 >= 5000
-- Level 4 >= 8000
-- Level 5 >= 20000