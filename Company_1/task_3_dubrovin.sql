-- Вопрос 3, отдел трафика
-- За каждого пользователя, который совершил платеж на проекте, мы платим рекламной сети. 
-- Какую сумму мы можем себе позволить платить за каждого привлеченного пользователя, если 
-- учесть, что горизонт окупаемости должен быть не больше 1 месяца?

-- Нужно найти ARPU (средний чек) за первый месяц пользователя в приложении. Сумма, которую 
-- мы можем позволить платить за пользователя (CAC) должна быть меньше ARPU.

WITH 
	first_month_users AS
	-- выберем пользователей, совершивших покупки в первый месяц после регистрации
		(SELECT
			user_id, date_start, date_purchase, amount, 
			AGE(date_purchase, date_start) AS date_diff
		FROM
			(SELECT
				user_id, amount, created_at as date_purchase
			FROM
				transactions) t
		LEFT JOIN
			(SELECT
				id, created_at as date_start
			FROM
				users) u
		ON t.user_id = u.id   
		WHERE
			AGE(date_purchase, date_start) < INTERVAL '31 day'), 
	 -- сумма транзакций пользователя в первый месяц
	 total_by_user AS    
		(SELECT
			user_id, SUM(amount) AS total_amount
		FROM
			first_month_users
		GROUP BY
			user_id)
-- среднее выручки с пользователя за месяц
SELECT
	AVG(total_amount) as arpmau, 
	-- Хорошим соотношением месячного дохода с пользователя к стоимости его привлечения будем считать коэффициент 3.
	AVG(total_amount) / 3 as cac
FROM
	total_by_user;
	
	
	
-- Рекомендация
-- Средняя выручка с пользователя в первый месяц составляет около 316 ед.
-- Соответственно, на привлечение нового пользователя нам лучше тратить меньше 105 ед.