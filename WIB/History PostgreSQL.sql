--- 15-11-2022 15:04:22
--- PostgreSQL
SELECT generate_series(1,10) AS id;

--- 15-11-2022 15:04:46
--- PostgreSQL
SELECT generate_series(1,10) AS id;

--- 15-11-2022 15:05:33
--- PostgreSQL
SELECT generate_series(100000,999999) AS id;

--- 15-11-2022 15:06:58
--- PostgreSQL
SELECT generate_series(100000,110000) AS id;

--- 15-11-2022 15:07:35
--- PostgreSQL
/***** ERROR ******
db error: ERROR: function random(integer) does not exist
HINT: No function matches the given name and argument types. You might need to add explicit type casts.
 ----- 
SELECT RANDOM(generate_series(100000,110000)) AS id;
*****/

--- 15-11-2022 15:08:58
--- PostgreSQL
SELECT (trunc(random()*100)) AS id;

--- 15-11-2022 15:12:07
--- PostgreSQL
SELECT (random()*100) AS id;

--- 15-11-2022 15:12:11
--- PostgreSQL
SELECT (random()*100) AS id;

--- 15-11-2022 15:12:40
--- PostgreSQL
SELECT (random()*100)::INT AS id;

--- 15-11-2022 15:12:41
--- PostgreSQL
SELECT (random()*100)::INT AS id;

--- 15-11-2022 15:12:42
--- PostgreSQL
SELECT (random()*100)::INT AS id;

--- 15-11-2022 15:12:42
--- PostgreSQL
SELECT (random()*100)::INT AS id;

--- 15-11-2022 15:12:42
--- PostgreSQL
SELECT (random()*100)::INT AS id;

--- 15-11-2022 15:12:42
--- PostgreSQL
SELECT (random()*100)::INT AS id;

--- 15-11-2022 15:12:43
--- PostgreSQL
SELECT (random()*100)::INT AS id;

--- 15-11-2022 15:12:43
--- PostgreSQL
SELECT (random()*100)::INT AS id;

--- 15-11-2022 15:12:43
--- PostgreSQL
SELECT (random()*100)::INT AS id;

--- 15-11-2022 15:12:43
--- PostgreSQL
SELECT (random()*100)::INT AS id;

--- 15-11-2022 15:12:43
--- PostgreSQL
SELECT (random()*100)::INT AS id;

--- 15-11-2022 15:12:43
--- PostgreSQL
SELECT (random()*100)::INT AS id;

--- 15-11-2022 15:12:44
--- PostgreSQL
SELECT (random()*100)::INT AS id;

--- 15-11-2022 15:12:44
--- PostgreSQL
SELECT (random()*100)::INT AS id;

--- 15-11-2022 15:12:44
--- PostgreSQL
SELECT (random()*100)::INT AS id;

--- 15-11-2022 15:12:51
--- PostgreSQL
SELECT (random()*1000)::INT AS id;

--- 15-11-2022 15:12:54
--- PostgreSQL
SELECT (random()*1000)::INT AS id;

--- 15-11-2022 15:12:56
--- PostgreSQL
SELECT (random()*1000)::INT AS id;

--- 15-11-2022 15:13:01
--- PostgreSQL
SELECT (random()*100000)::INT AS id;

--- 15-11-2022 15:13:02
--- PostgreSQL
SELECT (random()*100000)::INT AS id;

--- 15-11-2022 15:13:03
--- PostgreSQL
SELECT (random()*100000)::INT AS id;

--- 15-11-2022 15:13:06
--- PostgreSQL
SELECT (random()*100000)::INT AS id;

--- 15-11-2022 15:16:38
--- PostgreSQL
SELECT 
	(random()*100000)::INT AS id
FROM
	GENERATE_SERIES(100000, 999999);

--- 15-11-2022 15:17:19
--- PostgreSQL
SELECT 
	(random()::INT) AS id
FROM
	GENERATE_SERIES(100000, 999999)
LIMIT 10000;

--- 15-11-2022 15:17:34
--- PostgreSQL
SELECT 
	random() AS id
FROM
	GENERATE_SERIES(100000, 999999)
LIMIT 10000;

--- 15-11-2022 15:17:46
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near "*"
 ----- 
*100000);
*****/

--- 15-11-2022 15:17:54
--- PostgreSQL
SELECT 
	(random()*100000)::INT AS id
FROM
	GENERATE_SERIES(100000, 999999)
LIMIT 10000;

--- 15-11-2022 15:18:09
--- PostgreSQL
SELECT 
	(random()*100000)::INT AS id
FROM
	GENERATE_SERIES(100000, 999999)
LIMIT 10000;

--- 15-11-2022 15:24:19
--- PostgreSQL
/***** ERROR ******
db error: ERROR: function generate_series(integer, integer, double precision) does not exist
HINT: No function matches the given name and argument types. You might need to add explicit type casts.
 ----- 
SELECT generate_series(100000, 999999, random())
;
*****/

--- 15-11-2022 15:24:49
--- PostgreSQL
SELECT generate_series(100000, 999999, random()::int)
;

--- 15-11-2022 15:29:58
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near ")"
 ----- 
SELECT floor(random() * (10000-9000+1) + )::int;
*****/

--- 15-11-2022 15:30:03
--- PostgreSQL
SELECT floor(random() * (10000-9000+1) + 9000)::int;

--- 15-11-2022 15:30:27
--- PostgreSQL
/***** ERROR ******
db error: ERROR: function geberate_series(integer, integer) does not exist
HINT: No function matches the given name and argument types. You might need to add explicit type casts.
 ----- 
SELECT floor(random() * (10000-9000+1) + 9000)::int
FROM GEBERATE_SERIES(1, 5);
*****/

--- 15-11-2022 15:30:35
--- PostgreSQL
SELECT floor(random() * (10000-9000+1) + 9000)::int
FROM GENERATE_SERIES(1, 5);

--- 15-11-2022 15:32:36
--- PostgreSQL
SELECT floor(random() * (20000-10000+1) + 10000)::int
FROM GENERATE_SERIES(1, 5);

--- 15-11-2022 15:33:16
--- PostgreSQL
SELECT floor(random() * (20000-10000+1) + 10000)::int
FROM GENERATE_SERIES(1, 500);

--- 15-11-2022 15:43:17
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age VARCHAR NOT NULL
);

--- 15-11-2022 15:43:38
--- PostgreSQL
/***** ERROR ******
db error: ERROR: relation "users" already exists
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);
*****/

--- 15-11-2022 16:16:24
--- PostgreSQL
/***** ERROR ******
db error: ERROR: relation "users" already exists
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age VARCHAR NOT NULL
);

ALTER TABLE Users 
ALTER COLUMN age TYPE INT;
*****/

--- 15-11-2022 16:16:43
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column "age" cannot be cast automatically to type integer
HINT: You might need to specify "USING age::integer".
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age VARCHAR NOT NULL
--);

ALTER TABLE Users 
ALTER COLUMN age TYPE INT;
*****/

--- 15-11-2022 16:17:46
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age VARCHAR NOT NULL
--);

ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;

--- 15-11-2022 16:20:53
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

SELECT floor(random() * (20000-10000+1) + 10000)::int
FROM GENERATE_SERIES(1, 500);

--- 15-11-2022 16:21:31
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

SELECT floor(random() * 80)::int
FROM GENERATE_SERIES(1, 500);

--- 15-11-2022 16:23:44
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

SELECT floor(random() * 70 + 14)::int
FROM GENERATE_SERIES(1, 500);

--- 15-11-2022 16:25:15
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 14 and 95
SELECT floor(random() * 81 + 14)::int
FROM GENERATE_SERIES(1, 500);

--- 15-11-2022 16:25:36
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 95
SELECT floor(random() * 81 + 4)::int
FROM GENERATE_SERIES(1, 500);

--- 15-11-2022 16:26:07
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
SELECT floor(random() * 81 + 4)::int
FROM GENERATE_SERIES(1, 500);

--- 15-11-2022 16:27:28
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
INSERT INTO Users(age) 
  SELECT floor(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);

--- 15-11-2022 16:27:57
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT floor(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
SELECT *
FROM Users;

--- 15-11-2022 18:11:27
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near "AUTO_INCREMENT"
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT floor(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY AUTO_INCREMENT, 
  price DECIMAL(10,2) NOT NULL
);
  
/*CREATE TABLE Purchases(
   purchaseId SERIAL PRIMARY KEY,
   user_id INT NOT NULL*/;
*****/

--- 15-11-2022 18:11:38
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT floor(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);
  
/*CREATE TABLE Purchases(
   purchaseId SERIAL PRIMARY KEY,
   user_id INT NOT NULL*/;

--- 15-11-2022 18:15:00
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/
 
SELECT random() * 1000000 + 1000
FROM GENERATE_SERIES(1, 88);
 
/*CREATE TABLE Purchases(
   purchaseId SERIAL PRIMARY KEY,
   user_id INT NOT NULL*/;

--- 15-11-2022 18:16:52
--- PostgreSQL
/***** ERROR ******
db error: ERROR: function round(double precision, integer) does not exist
HINT: No function matches the given name and argument types. You might need to add explicit type casts.
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
SELECT ROUND(random() * 1000000 + 50000, 2)
FROM GENERATE_SERIES(1, 88);
 
/*CREATE TABLE Purchases(
   purchaseId SERIAL PRIMARY KEY,
   user_id INT NOT NULL*/;
*****/

--- 15-11-2022 18:17:16
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
SELECT random() * 1000000 + 50000
FROM GENERATE_SERIES(1, 88);
 
/*CREATE TABLE Purchases(
   purchaseId SERIAL PRIMARY KEY,
   user_id INT NOT NULL*/;

--- 15-11-2022 18:17:35
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
SELECT (random() * 1000000 + 50000)::DECIMAL
FROM GENERATE_SERIES(1, 88);
 
/*CREATE TABLE Purchases(
   purchaseId SERIAL PRIMARY KEY,
   user_id INT NOT NULL*/;

--- 15-11-2022 18:17:49
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);
 
/*CREATE TABLE Purchases(
   purchaseId SERIAL PRIMARY KEY,
   user_id INT NOT NULL*/;

--- 15-11-2022 18:18:49
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);
 
/*CREATE TABLE Purchases(
   purchaseId SERIAL PRIMARY KEY,
   user_id INT NOT NULL*/;

--- 15-11-2022 18:19:14
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

SELECT *
FROM Items;

/*CREATE TABLE Purchases(
   purchaseId SERIAL PRIMARY KEY,
   user_id INT NOT NULL*/;

--- 15-11-2022 18:34:44
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  CONSTRAINT fk_users_purchases
      FOREIGN KEY(userid) 
      REFERENCES Users(userid)),
  CONSTRAINT fk_items_purchases
      FOREIGN KEY(itemid) 
      REFERENCES Items(itemid)), 
  date DATE*/
  
select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00');

--- 15-11-2022 18:35:15
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  CONSTRAINT fk_users_purchases
      FOREIGN KEY(userid) 
      REFERENCES Users(userid)),
  CONSTRAINT fk_items_purchases
      FOREIGN KEY(itemid) 
      REFERENCES Items(itemid)), 
  date DATE*/
  
select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 1000);

--- 15-11-2022 18:37:00
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  CONSTRAINT fk_users_purchases
      FOREIGN KEY(userid) 
      REFERENCES Users(userid)),
  CONSTRAINT fk_items_purchases
      FOREIGN KEY(itemid) 
      REFERENCES Items(itemid)), 
  date DATE*/

-- Let there be 2000 purchases between november 10th and november 15th
select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);

--- 15-11-2022 18:40:01
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near ","
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  CONSTRAINT fk_users_purchases
      FOREIGN KEY(userid) 
      REFERENCES Users(userid)),
  CONSTRAINT fk_items_purchases
      FOREIGN KEY(itemid) 
      REFERENCES Items(itemid)), 
  date TIMESTAMP WITHOUT TIMEZONE;


-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/;
*****/

--- 15-11-2022 18:42:23
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near ","
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  CONSTRAINT fk_users_purchases
      FOREIGN KEY(userid) 
      REFERENCES Users(userid)),
  CONSTRAINT fk_items_purchases
      FOREIGN KEY(itemid) 
      REFERENCES Items(itemid)), 
  date TIMESTAMP WITHOUT TIMEZONE
);


-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/;
*****/

--- 15-11-2022 18:44:12
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near ","
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  CONSTRAINT fk_users_purchases
      FOREIGN KEY(userid) 
      REFERENCES Users(userid)),
  CONSTRAINT fk_items_purchases
      FOREIGN KEY(itemid) 
      REFERENCES Items(itemid)), 
  date TIMESTAMP
);


-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/;
*****/

--- 15-11-2022 18:45:13
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near ","
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  CONSTRAINT fk_users_purchases
      FOREIGN KEY(userid) 
      REFERENCES users(userid)),
  CONSTRAINT fk_items_purchases
      FOREIGN KEY(itemid) 
      REFERENCES items(itemid)), 
  date TIMESTAMP WITHOUT TIMEZONE
);


-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/;
*****/

--- 15-11-2022 18:46:53
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/;

--- 15-11-2022 18:47:26
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near ","
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  CONSTRAINT fk_users_purchases
      FOREIGN KEY(userid) 
      REFERENCES users(userid)),
  CONSTRAINT fk_items_purchases
      FOREIGN KEY(itemid) 
      REFERENCES items(itemid)), 
  date TIMESTAMP WITHOUT TIMEZONE
);
*****/

--- 15-11-2022 18:47:53
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near ","
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  CONSTRAINT fk_users_purchases
      FOREIGN KEY(userid) 
      REFERENCES users(userid)),
  CONSTRAINT fk_items_purchases
      FOREIGN KEY(itemid) 
      REFERENCES items(itemid)), 
  date TIMESTAMP WITHOUT TIMEZONE
);
*****/

--- 15-11-2022 18:49:16
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near "TIMEZONE"
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  CONSTRAINT fk_users_purchases
      FOREIGN KEY(userid) 
      REFERENCES users(userid),
  CONSTRAINT fk_items_purchases
      FOREIGN KEY(itemid) 
      REFERENCES items(itemid), 
  date TIMESTAMP WITHOUT TIMEZONE
);
*****/

--- 15-11-2022 18:49:41
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column "userid" referenced in foreign key constraint does not exist
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  CONSTRAINT fk_users_purchases
      FOREIGN KEY(userid) 
      REFERENCES users(userid),
  CONSTRAINT fk_items_purchases
      FOREIGN KEY(itemid) 
      REFERENCES items(itemid), 
  date TIMESTAMP
);
*****/

--- 15-11-2022 18:50:14
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column "userid" referenced in foreign key constraint does not exist
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  CONSTRAINT fk_users_purchases
      FOREIGN KEY(userid) 
      REFERENCES users(userId),
  CONSTRAINT fk_items_purchases
      FOREIGN KEY(itemid) 
      REFERENCES items(itemId), 
  date TIMESTAMP
);
*****/

--- 15-11-2022 18:54:11
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column "userid" referenced in foreign key constraint does not exist
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  FOREIGN KEY (userId)  REFERENCES Users (userId),
  FOREIGN KEY (itemId)  REFERENCES Items (itemId), 
  date TIMESTAMP
);
*****/

--- 15-11-2022 18:54:46
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near "TIMESTAMP"
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES Items (itemId), 
userid  date TIMESTAMP
);
*****/

--- 15-11-2022 18:55:16
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column "userid" referenced in foreign key constraint does not exist
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);
*****/

--- 15-11-2022 18:55:54
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column "userid" referenced in foreign key constraint does not exist
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);
*****/

--- 15-11-2022 18:59:09
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

SELECT * FROM users;

--- 15-11-2022 18:59:31
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column "userid" referenced in foreign key constraint does not exist
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);
*****/

--- 15-11-2022 19:04:05
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column "userId" referenced in foreign key constraint does not exist
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  FOREIGN KEY ("userId")  REFERENCES users(userid),
  FOREIGN KEY ("itemId")  REFERENCES items(itemid), 
  date TIMESTAMP
);
*****/

--- 15-11-2022 19:04:29
--- PostgreSQL
/***** ERROR ******
db error: ERROR: unterminated quoted string at or near "'itemid"), 
  date TIMESTAMP
);"
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  FOREIGN KEY (userId)  REFERENCES users("userid"),
  FOREIGN KEY (itemId)  REFERENCES items('itemid"), 
  date TIMESTAMP
);
*****/

--- 15-11-2022 19:04:41
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column "userid" referenced in foreign key constraint does not exist
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  FOREIGN KEY (userId)  REFERENCES users("userid"),
  FOREIGN KEY (itemId)  REFERENCES items("itemid"), 
  date TIMESTAMP
);
*****/

--- 15-11-2022 19:04:52
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column "userId" referenced in foreign key constraint does not exist
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  FOREIGN KEY ("userId")  REFERENCES users("userid"),
  FOREIGN KEY (itemId)  REFERENCES items("itemid"), 
  date TIMESTAMP
);
*****/

--- 15-11-2022 19:07:48
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near "NULL"
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  FOREIGN KEY (userId)  REFERENCES users(userid) NOT NULL,
  FOREIGN KEY (itemId)  REFERENCES items(itemid) NOT NULL, 
  date TIMESTAMP
);
*****/

--- 15-11-2022 19:09:50
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/




-- Let there be 2000 purchases between november 10th and november 15th
/*select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)*/

CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOt NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);

--- 15-11-2022 19:41:09
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOt NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);

--- 15-11-2022 19:41:44
--- PostgreSQL
/***** ERROR ******
db error: ERROR: null value in column "userid" of relation "purchases" violates not-null constraint
DETAIL: Failing row contains (1, null, null, 2022-11-11 05:28:13.618509).
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOt NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
INSERT INTO Purchases(date)
select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);
*****/

--- 15-11-2022 19:42:20
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOt NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT * FROM purchases;

--- 15-11-2022 19:42:27
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOt NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT * FROM purchases;

--- 15-11-2022 19:44:32
--- PostgreSQL
/***** ERROR ******
db error: ERROR: function random(integer) does not exist
HINT: No function matches the given name and argument types. You might need to add explicit type casts.
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOt NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

SELECT random(userid) 
FROM users;

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/;
*****/

--- 15-11-2022 19:45:47
--- PostgreSQL
/***** ERROR ******
db error: ERROR: function random(integer) does not exist
HINT: No function matches the given name and argument types. You might need to add explicit type casts.
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOt NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

SELECT random(userid) 
FROM users
GROUP BY GENERATE_SERIES(1, 2000);

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/;
*****/

--- 15-11-2022 19:46:21
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column "rand" does not exist
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOt NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

SELECT userid 
FROM users
ORDER BY RAND;

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/;
*****/

--- 15-11-2022 19:46:26
--- PostgreSQL
/***** ERROR ******
db error: ERROR: function rand() does not exist
HINT: No function matches the given name and argument types. You might need to add explicit type casts.
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOt NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

SELECT userid 
FROM users
ORDER BY RAND();

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/;
*****/

--- 15-11-2022 19:46:29
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/
  
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOt NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

SELECT userid 
FROM users
ORDER BY RANDOM();

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
select timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/;

--- 15-11-2022 19:56:21
--- PostgreSQL
/***** ERROR ******
db error: ERROR: more than one row returned by a subquery used as an expression
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT random() * (SELECT userid FROM users);
*****/

--- 15-11-2022 19:57:11
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT random() * (SELECT MAX(userid) FROM users);

--- 15-11-2022 19:57:23
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT random()::INT * (SELECT MAX(userid) FROM users);

--- 15-11-2022 19:57:26
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT random()::INT * (SELECT MAX(userid) FROM users);

--- 15-11-2022 19:57:27
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT random()::INT * (SELECT MAX(userid) FROM users);

--- 15-11-2022 19:57:31
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT random()::INT * (SELECT MAX(userid) FROM users);

--- 15-11-2022 19:57:33
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT random()::INT * (SELECT MAX(userid) FROM users);

--- 15-11-2022 19:57:34
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT random()::INT * (SELECT MAX(userid) FROM users);

--- 15-11-2022 19:57:34
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT random()::INT * (SELECT MAX(userid) FROM users);

--- 15-11-2022 19:58:00
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT random()::INT * (SELECT MAX(userid) FROM users)
FROM GENERATE_SERIES(1, 2000);

--- 15-11-2022 19:58:22
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT random()::INT * (500)
FROM GENERATE_SERIES(1, 2000);

--- 15-11-2022 19:58:43
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT random() * (500)
FROM GENERATE_SERIES(1, 2000);

--- 15-11-2022 19:59:01
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT (random() * 500)::INT
FROM GENERATE_SERIES(1, 2000);

--- 15-11-2022 19:59:40
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near "FROM"
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT (random() * (SELECT MAX(userid) FROM users)::INT
FROM GENERATE_SERIES(1, 2000);
*****/

--- 15-11-2022 19:59:48
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT (random() * (SELECT MAX(userid) FROM users))::INT
FROM GENERATE_SERIES(1, 2000);

--- 15-11-2022 20:00:58
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near "COUNT"
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

COUNT(*) FROM
(SELECT (random() * (SELECT MAX(userid) FROM users))::INT
FROM GENERATE_SERIES(1, 2000));
*****/

--- 15-11-2022 20:01:09
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near "COUNT"
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

COUNT() FROM
(SELECT (random() * (SELECT MAX(userid) FROM users))::INT
FROM GENERATE_SERIES(1, 2000));
*****/

--- 15-11-2022 20:01:15
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near "COUNT"
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

COUNT(*) FROM
(SELECT (random() * (SELECT MAX(userid) FROM users))::INT
FROM GENERATE_SERIES(1, 2000));
*****/

--- 15-11-2022 20:01:28
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT (random() * (SELECT MAX(userid) FROM users))::INT
FROM GENERATE_SERIES(1, 2000);

--- 15-11-2022 20:02:55
--- PostgreSQL
/***** ERROR ******
db error: ERROR: null value in column "itemid" of relation "purchases" violates not-null constraint
DETAIL: Failing row contains (2, 368, null, null).
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

INSERt INTO Purchases(userid)
SELECT (random() * (SELECT MAX(userid) FROM users))::INT
FROM GENERATE_SERIES(1, 2000);
*****/

--- 15-11-2022 20:05:07
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near "SELECT"
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

INSERt INTO Purchases(userid, itemid)
SELECT (random() * (SELECT MAX(userid) FROM users))::INT
FROM GENERATE_SERIES(1, 2000), 
SELECT (random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);
*****/

--- 15-11-2022 20:05:23
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near "*"
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

INSERt INTO Purchases(userid, itemid)
SELECT (random() * (SELECT MAX(userid) FROM users))::INT
FROM GENERATE_SERIES(1, 2000), 
	   (random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);
*****/

--- 15-11-2022 20:13:50
--- PostgreSQL
/***** ERROR ******
db error: ERROR: insert or update on table "purchases" violates foreign key constraint "purchases_userid_fkey"
DETAIL: Key (userid)=(0) is not present in table "users".
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

INSERt INTO Purchases(userid, itemid)
SELECT (random() * (SELECT MAX(userid) FROM users))::INT, 
	   (random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);
*****/

--- 15-11-2022 20:14:26
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT (random() * (SELECT MAX(userid) FROM users))::INT, 
	   (random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT (random() * (SELECT MAX(userid) FROM users))::INT, 
	   (random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);

--- 15-11-2022 20:16:10
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT (random() * (SELECT MAX(userid) FROM users))::INT, 
	   (random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);

--- 15-11-2022 20:18:33
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT DISTINCT userid
FROM users;

--- 15-11-2022 20:18:59
--- PostgreSQL
/***** ERROR ******
db error: ERROR: subquery in FROM must have an alias
HINT: For example, FROM (SELECT ...) [AS] foo.
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT random() FROM
	(SELECT DISTINCT userid
	FROM users);
*****/

--- 15-11-2022 20:19:14
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT random() FROM
	(SELECT DISTINCT userid
	FROM users) AS u;

--- 15-11-2022 20:19:31
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT FLOOR(random()) FROM
	(SELECT DISTINCT userid
	FROM users) AS u;

--- 15-11-2022 20:19:41
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT FLOOR(random())::INT FROM
	(SELECT DISTINCT userid
	FROM users) AS u;

--- 15-11-2022 20:19:43
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT FLOOR(random())::INT FROM
	(SELECT DISTINCT userid
	FROM users) AS u;

--- 15-11-2022 20:19:50
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT CEILING(random())::INT FROM
	(SELECT DISTINCT userid
	FROM users) AS u;

--- 15-11-2022 20:22:41
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column "users.userid" must appear in the GROUP BY clause or be used in an aggregate function
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT userid
FROM users
GROUP BY GENERATE_SERIES(1, 2000);
*****/

--- 15-11-2022 20:22:51
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT userid
FROM users
GROUP BY userid, GENERATE_SERIES(1, 2000);

--- 15-11-2022 20:23:53
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT userid
FROM users;

--- 15-11-2022 20:30:59
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT 
	FLOOR(random() * 81 + 4)::int,
	ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_sERIES(1, 2000);

--- 15-11-2022 20:32:48
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near "FROM"
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT 
	FLOOR(random() * 500)::INT,
	ROUND((random() * 88)::INT
FROM GENERATE_SERIES(1, 2000);
*****/

--- 15-11-2022 20:33:30
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT 
	FLOOR(random() * 500)::INT,
	FLOOR(random() * 88)::INT
FROM GENERATE_SERIES(1, 2000);

--- 15-11-2022 20:34:47
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1
FROM GENERATE_SERIES(1, 2000);

--- 15-11-2022 20:35:27
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1
FROM GENERATE_SERIES(1, 2000);

--- 15-11-2022 20:42:18
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

/*INSERt INTO Purchases(userid, itemid)
SELECT FLOOR(random() * (SELECT MAX(userid) FROM users))::INT, 
	   FLOOR(random() * (SELECT MAX(itemid) FROM items))::INT
FROM GENERATE_SERIES(1, 2000);*/

INSERt INTO Purchases(userid, itemid)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1
FROM GENERATE_SERIES(1, 2000);

--- 15-11-2022 20:43:22
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

-- Filling userid and itemid in Purchases
/*INSERt INTO Purchases(userid, itemid)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1
FROM GENERATE_SERIES(1, 2000)*/

SELECT *
FROM Purchases;

--- 15-11-2022 20:43:56
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

-- Filling userid and itemid in Purchases
/*INSERt INTO Purchases(userid, itemid)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1
FROM GENERATE_SERIES(1, 2000)*/

SELECT COUNT(*)
FROM Purchases;

--- 15-11-2022 20:44:21
--- PostgreSQL
/***** ERROR ******
db error: ERROR: null value in column "userid" of relation "purchases" violates not-null constraint
DETAIL: Failing row contains (4003, null, null, 2022-11-13 11:04:25.311804).
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid and itemid in Purchases
/*INSERt INTO Purchases(userid, itemid)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1
FROM GENERATE_SERIES(1, 2000)*/

-- Let there be 2000 purchases between november 10th and november 15th
INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);
*****/

--- 15-11-2022 20:45:54
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column "purchaseid" does not exist
HINT: There is a column named "purchaseid" in table "purchases", but it cannot be referenced from this part of the query.
 ----- 
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid and itemid in Purchases
/*INSERt INTO Purchases(userid, itemid)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1
FROM GENERATE_SERIES(1, 2000)*/

-- Let there be 2000 purchases between november 10th and november 15th
INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)
WHERE purchaseid BETWEEN (SELECT MIN(purchaseid) FROM Purchases) AND (SELECT MAX(purchaseid) FROM Purchases);
*****/

--- 15-11-2022 20:48:54
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid and itemid in Purchases
/*INSERt INTO Purchases(userid, itemid)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1
FROM GENERATE_SERIES(1, 2000)*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)
WHERE purchaseid BETWEEN (SELECT MIN(purchaseid) FROM Purchases) AND (SELECT MAX(purchaseid) FROM Purchases);*/

TRUNCATE Purchases;

--- 15-11-2022 20:49:05
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid and itemid in Purchases
/*INSERt INTO Purchases(userid, itemid)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1
FROM GENERATE_SERIES(1, 2000)*/

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000)
WHERE purchaseid BETWEEN (SELECT MIN(purchaseid) FROM Purchases) AND (SELECT MAX(purchaseid) FROM Purchases);*/

SELECT * FROM Purchases;

--- 15-11-2022 20:50:34
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchasesdemo
-- Let there be 2000 purchases between november 10th and november 15th
INSERt INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);

-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/;

--- 15-11-2022 20:51:07
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 2000 purchases between november 10th and november 15th
/*INSERt INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT * FROM Purchases


-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/;

--- 15-11-2022 20:51:32
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 2000 purchases between november 10th and november 15th
/*INSERt INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/

SELECT COUNT(*) FROM Purchases


-- Let there be 2000 purchases between november 10th and november 15th
/*INSERT INTO Purchases(date)
SELECT timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/;

--- 15-11-2022 21:54:02
--- PostgreSQL
--SELECT floor(random() * (20000-10000+1) + 10000)::int
--FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Users
--CREATE TABLE Users(
--   userId SERIAL PRIMARY KEY,
--   age INT NOT NULL
--);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 2000 purchases between november 10th and november 15th
/*INSERt INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/


DROP TABLE IF EXISTS users, items, purchases;

--- 15-11-2022 21:54:27
--- PostgreSQL
-- Создаем таблицу Users
CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 2000 purchases between november 10th and november 15th
/*INSERt INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/;

--- 15-11-2022 21:54:32
--- PostgreSQL
/***** ERROR ******
db error: ERROR: relation "users" already exists
 ----- 
-- Создаем таблицу Users
CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 2000 purchases between november 10th and november 15th
/*INSERt INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/;
*****/

--- 15-11-2022 21:55:55
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пускай у нас будет 500 пользователей от 4 до 85 лет
INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 2000 purchases between november 10th and november 15th
/*INSERt INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/;

--- 15-11-2022 21:56:16
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пускай у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);

-- Let there be 88 items with different prices between 50000 and 1000000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 2000 purchases between november 10th and november 15th
/*INSERt INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/;

--- 15-11-2022 21:57:27
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 2000 purchases between november 10th and november 15th
/*INSERt INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/;

--- 15-11-2022 21:57:52
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

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
-- Let there be 2000 purchases between november 10th and november 15th
/*INSERt INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/;

--- 15-11-2022 21:59:56
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 2000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 2 000 покупок в разное время дня с 10.11.2022 до 15.11.2022
INSERt INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);

--- 15-11-2022 22:02:49
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 2000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 2 000 покупок в разное время дня с 10.11.2022 до 15.11.2022
/*INSERt INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/




/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/
TRUNCATE purchases;

--- 15-11-2022 22:02:59
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 2000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 2 000 покупок в разное время дня с 10.11.2022 до 15.11.2022
/*INSERt INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2022-11-10 00:00:00')
FROM GENERATE_SERIES(1, 2000);*/




/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/
SELECT * FROM purchases;

--- 15-11-2022 22:05:09
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2020-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);




/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/;

--- 15-11-2022 22:05:23
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2022-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2020-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

SELECT * FROm purchases


/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/;

--- 15-11-2022 22:06:23
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-10 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROm purchases

TRUNCATE purchases

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/;

--- 15-11-2022 22:06:46
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);

--SELECT * FROm purchases

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/;

--- 15-11-2022 22:06:56
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

SELECT * FROm purchases

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/;

--- 15-11-2022 22:17:04
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column reference "userid" is ambiguous
 ----- 
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items
SELECT	
	DATE_TRUNC('month', date) as mnth,
    userid,
    SUM(price) AS user_total
FROM	
	users INNER JOIN purchases ON users.userid = purchases.userid
    	  INNER JOIN items ON items.itemid = purchases.itemid
GROUP BY 
	mnth, userid;
*****/

--- 15-11-2022 22:17:27
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column reference "userid" is ambiguous
 ----- 
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items
SELECT	
	DATE_TRUNC('month', date) as mnth,
    purchases.userid,
    SUM(price) AS user_total
FROM	
	users INNER JOIN purchases ON users.userid = purchases.userid
    	  INNER JOIN items ON items.itemid = purchases.itemid
GROUP BY 
	mnth, userid;
*****/

--- 15-11-2022 22:17:47
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items
SELECT	
	DATE_TRUNC('month', date) as mnth,
    purchases.userid,
    SUM(price) AS user_total
FROM	
	users INNER JOIN purchases ON users.userid = purchases.userid
    	  INNER JOIN items ON items.itemid = purchases.itemid
GROUP BY 
	mnth, purchases.userid;

--- 15-11-2022 22:18:24
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items
SELECT	
	DATE_TRUNC('month', date) as mnth,
    purchases.userid,
    SUM(price) AS user_total
FROM	
	users INNER JOIN purchases ON users.userid = purchases.userid
    	  INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 18 AND age <= 25
GROUP BY 
	mnth, purchases.userid;

--- 15-11-2022 22:19:45
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items
SELECT	
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
	mnth;

--- 15-11-2022 22:22:14
--- PostgreSQL
/***** ERROR ******
db error: ERROR: subquery in FROM must have an alias
HINT: For example, FROM (SELECT ...) [AS] foo.
 ----- 
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items
SELECT
	mnth, AVG(user_total) as monthly_avg_bill
FROM 
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
      mnth)
GROUP BY	
	mnth;
*****/

--- 15-11-2022 22:22:45
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items
SELECT
	mnth, AVG(user_total) as monthly_avg_bill
FROM 
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
	mnth;

--- 15-11-2022 22:25:04
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items
/*SELECT
	mnth, AVG(user_total) as monthly_avg_bill
FROM 
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
	mnth*/
    
SELECT
	mnth, ROUND(AVG(user_total), 2) as monthly_avg_bill
FROM 
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
	mnth;

--- 15-11-2022 22:29:47
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column reference "mnth" is ambiguous
 ----- 
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items
WITH
	young_users_monthly_avg AS 
(SELECT
	mnth, ROUND(AVG(user_total), 2) as monthly_avg_bill
FROM 
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
(SELECT
	mnth, ROUND(AVG(user_total), 2) as monthly_avg_bill
FROM 
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

SELECT
	mnth, y.monthly_avg_bill as avg_sum_1825, ma.monthly_avg_bill AS avg_sum_2635
FROM
	young_users_monthly_avg y INNER JOIN middle_age_users_monthly_avg ma ON y.mnth = ma.mnth
;
*****/

--- 15-11-2022 22:29:56
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items
WITH
	young_users_monthly_avg AS 
(SELECT
	mnth, ROUND(AVG(user_total), 2) as monthly_avg_bill
FROM 
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
(SELECT
	mnth, ROUND(AVG(user_total), 2) as monthly_avg_bill
FROM 
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

SELECT
	y.mnth, y.monthly_avg_bill as avg_sum_1825, ma.monthly_avg_bill AS avg_sum_2635
FROM
	young_users_monthly_avg y INNER JOIN middle_age_users_monthly_avg ma ON y.mnth = ma.mnth
;

--- 15-11-2022 22:40:28
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
GROUP BY	
	mnth;

--- 15-11-2022 22:40:53
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth;

--- 15-11-2022 22:41:53
--- PostgreSQL
/***** ERROR ******
db error: ERROR: cannot truncate a table referenced in a foreign key constraint
DETAIL: Table "purchases" references "items".
HINT: Truncate table "purchases" at the same time, or use TRUNCATE ... CASCADE.
 ----- 
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

TRUNCATE items

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;
*****/

--- 15-11-2022 22:42:19
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 50 000 до 1 000 000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000000 + 50000)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

TRUNCATE purchases, items

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;

--- 15-11-2022 22:43:35
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 50 000 до 1000 1 000 000
INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;

--- 15-11-2022 22:44:29
--- PostgreSQL
/***** ERROR ******
db error: ERROR: insert or update on table "purchases" violates foreign key constraint "purchases_itemid_fkey"
DETAIL: Key (itemid)=(72) is not present in table "items".
 ----- 
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;
*****/

--- 15-11-2022 22:45:12
--- PostgreSQL
/***** ERROR ******
db error: ERROR: insert or update on table "purchases" violates foreign key constraint "purchases_itemid_fkey"
DETAIL: Key (itemid)=(61) is not present in table "items".
 ----- 
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;
*****/

--- 15-11-2022 22:45:57
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near "items"
 ----- 
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/
DROP items, purchases, users
/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;
*****/

--- 15-11-2022 22:46:23
--- PostgreSQL
/***** ERROR ******
db error: ERROR: syntax error at or near "IF"
 ----- 
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/
DROP IF EXISTS purchases, items, users
/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;
*****/

--- 15-11-2022 22:47:00
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/
DROP TABLE IF EXISTS purchases, items, users
/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;

--- 15-11-2022 22:47:10
--- PostgreSQL
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
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;

--- 15-11-2022 22:47:24
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;

--- 15-11-2022 22:47:40
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;

--- 15-11-2022 22:48:17
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;

--- 15-11-2022 22:48:33
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;

--- 15-11-2022 22:48:51
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

SELECT * FROM items

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;

--- 15-11-2022 22:49:14
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

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
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;

--- 15-11-2022 22:49:33
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;

--- 15-11-2022 22:49:50
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;

--- 15-11-2022 22:50:46
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

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

/*SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth*/;

--- 15-11-2022 22:52:07
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth;

--- 15-11-2022 22:52:55
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column "total" does not exist
 ----- 
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total, 
    DENSE_RANK() OVER(ORDER BY total DESC) as rnk
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth;
*****/

--- 15-11-2022 22:53:09
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

SELECT
	TO_CHAR(date, 'Month') AS mnth,
    SUM(price) as total, 
    DENSE_RANK() OVER(ORDER BY SUM(price) DESC) as rnk
FROM
	users INNER JOIN purchases ON users.userid = purchases.userid
          INNER JOIN items ON items.itemid = purchases.itemid
WHERE 
	age >= 35
GROUP BY	
	mnth;

--- 15-11-2022 22:55:23
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

SELECT mnth
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
      mnth) as total_ranking_monthly;

--- 15-11-2022 22:55:47
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

SELECT mnth
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

--- 15-11-2022 23:07:38
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

SELECT
	DATE_TRUNC('year', date) as y, 
    items.itemid, 
    SUM(price) as total
FROM	
	purchases INNER JOIN items ON purchases.itemid = items.itemid
WHERE	
	EXTRACT(YEAR FROM date) = (SELECT MAX(EXTRACT(YEAR FROM date)) FROM purchases)
GROUP BY
	y, items.itemid;

--- 15-11-2022 23:08:22
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

SELECT
	EXTRACT(YEAR FROM date) as y, 
    items.itemid, 
    SUM(price) as total
FROM	
	purchases INNER JOIN items ON purchases.itemid = items.itemid
WHERE	
	EXTRACT(YEAR FROM date) = (SELECT MAX(EXTRACT(YEAR FROM date)) FROM purchases)
GROUP BY
	y, items.itemid;

--- 15-11-2022 23:09:05
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 87)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/
TRUNCATE purchases
--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

/*SELECT
	EXTRACT(YEAR FROM date) as y, 
    items.itemid, 
    SUM(price) as total
FROM	
	purchases INNER JOIN items ON purchases.itemid = items.itemid
WHERE	
	EXTRACT(YEAR FROM date) = (SELECT MAX(EXTRACT(YEAR FROM date)) FROM purchases)
GROUP BY
	y, items.itemid*/;

--- 15-11-2022 23:09:20
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
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

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

/*SELECT
	EXTRACT(YEAR FROM date) as y, 
    items.itemid, 
    SUM(price) as total
FROM	
	purchases INNER JOIN items ON purchases.itemid = items.itemid
WHERE	
	EXTRACT(YEAR FROM date) = (SELECT MAX(EXTRACT(YEAR FROM date)) FROM purchases)
GROUP BY
	y, items.itemid*/;

--- 15-11-2022 23:09:40
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 499)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

SELECT
	EXTRACT(YEAR FROM date) as y, 
    items.itemid, 
    SUM(price) as total
FROM	
	purchases INNER JOIN items ON purchases.itemid = items.itemid
WHERE	
	EXTRACT(YEAR FROM date) = (SELECT MAX(EXTRACT(YEAR FROM date)) FROM purchases)
GROUP BY
	y, items.itemid;

--- 15-11-2022 23:11:05
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

SELECT
	EXTRACT(YEAR FROM date) as y, 
    items.itemid, 
    SUM(price) as total, 
    DENSE_RANK() OVER(ORDER BY SUM(price) DESC) as rnk
FROM	
	purchases INNER JOIN items ON purchases.itemid = items.itemid
WHERE	
	EXTRACT(YEAR FROM date) = (SELECT MAX(EXTRACT(YEAR FROM date)) FROM purchases)
GROUP BY
	y, items.itemid;

--- 15-11-2022 23:12:25
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

SELECT itemid
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
      y, items.itemid) as last_year_total_ranking_by_item;

--- 15-11-2022 23:12:44
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

SELECT itemid
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

--- 15-11-2022 23:13:27
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

SELECT itemid AS bestseller_item
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

--- 15-11-2022 23:17:52
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth as mnth_bestselling
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

/*SELECT itemid AS item_bestseller
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
	rnk = 1;*/
    


-- Г) топ-3 товаров по выручке и их доля в общей выручке за любой год

SELECT
      EXTRACT(YEAR FROM date) as y, 
      items.itemid, 
      SUM(price) as total, 
      DENSE_RANK() OVER(PARTITION BY EXTRACT(YEAR FROM date) 
                        ORDER BY SUM(price) DESC) as rnk
  FROM	
      purchases INNER JOIN items ON purchases.itemid = items.itemid
  GROUP BY
      y, items.itemid;

--- 15-11-2022 23:19:59
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth as mnth_bestselling
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

/*SELECT itemid AS item_bestseller
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
	rnk = 1;*/
    


-- Г) топ-3 товаров по выручке и их доля в общей выручке за любой год

SELECT
      EXTRACT(YEAR FROM date) as y, 
      items.itemid, 
      SUM(price) as total_item, 
      DENSE_RANK() OVER(PARTITION BY EXTRACT(YEAR FROM date) 
                        ORDER BY SUM(price) DESC) as rnk, 
      SUM(price) OVEr(PARTITION BY EXTRACT(YEAR FROM date)) as total_year
  FROM	
      purchases INNER JOIN items ON purchases.itemid = items.itemid
  GROUP BY
      y, items.itemid;

--- 15-11-2022 23:21:52
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth as mnth_bestselling
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

/*SELECT itemid AS item_bestseller
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
	rnk = 1;*/
    


-- Г) топ-3 товаров по выручке и их доля в общей выручке за любой год

SELECT
      EXTRACT(YEAR FROM date) as y, 
      items.itemid, 
      SUM(price) as total_item, 
      DENSE_RANK() OVER(PARTITION BY EXTRACT(YEAR FROM date) 
                        ORDER BY SUM(price) DESC) as rnk, 
      SUM(price) OVEr(PARTITION BY EXTRACT(YEAR FROM date)) as total_year
  FROM	
      purchases INNER JOIN items ON purchases.itemid = items.itemid
  GROUP BY
      y, items.itemid;

--- 15-11-2022 23:23:00
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth as mnth_bestselling
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

/*SELECT itemid AS item_bestseller
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
	rnk = 1;*/
    


-- Г) топ-3 товаров по выручке и их доля в общей выручке за любой год

SELECT
      EXTRACT(YEAR FROM date) as y, 
      items.itemid, 
      SUM(price) as total_item, 
      DENSE_RANK() OVER(PARTITION BY EXTRACT(YEAR FROM date) 
                        ORDER BY SUM(price) DESC) as rnk
  FROM	
      purchases INNER JOIN items ON purchases.itemid = items.itemid
  GROUP BY
      y, items.itemid;

--- 15-11-2022 23:24:04
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth as mnth_bestselling
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

/*SELECT itemid AS item_bestseller
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
	rnk = 1;*/
    


-- Г) топ-3 товаров по выручке и их доля в общей выручке за любой год

SELECT
      EXTRACT(YEAR FROM date) as y, 
      items.itemid, 
      SUM(price) as total_item, 
      DENSE_RANK() OVER(PARTITION BY EXTRACT(YEAR FROM date) 
                        ORDER BY SUM(price) DESC) as rnk
  FROM	
      purchases INNER JOIN items ON purchases.itemid = items.itemid
  GROUP BY
      y, items.itemid;

--- 15-11-2022 23:29:25
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth as mnth_bestselling
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

/*SELECT itemid AS item_bestseller
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
	rnk = 1;*/
    


-- Г) топ-3 товаров по выручке и их доля в общей выручке за любой год

/*SELECT
      EXTRACT(YEAR FROM date) as y, 
      items.itemid, 
      SUM(price) as total_item, 
      DENSE_RANK() OVER(PARTITION BY EXTRACT(YEAR FROM date) 
                        ORDER BY SUM(price) DESC) as rnk
  FROM	
      purchases INNER JOIN items ON purchases.itemid = items.itemid
  GROUP BY
      y, items.itemid*/
      
SELECT
	EXTRACT(YEAR FROM date) AS y, 
    SUM(price) as total_year
FROM
	purchases INNER JOIN items ON purchases.itemid = items.itemid
GROUP BY
	EXTRACT(YEAR FROM date);

--- 15-11-2022 23:37:18
--- PostgreSQL
/***** ERROR ******
db error: ERROR: column reference "y" is ambiguous
 ----- 
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth as mnth_bestselling
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

/*SELECT itemid AS item_bestseller
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
	rnk = 1;*/
    


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
	y, item, total_item, total_year, total_item / total_year as "share"
FROM
	items_ranking_by_revenue r LEFT JOIN yearly_total yt ON r.y = yt.y
WHERE
	rnk <= 3;
*****/

--- 15-11-2022 23:37:27
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth as mnth_bestselling
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

/*SELECT itemid AS item_bestseller
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
	rnk = 1;*/
    


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
	r.y, item, total_item, total_year, total_item / total_year as "share"
FROM
	items_ranking_by_revenue r LEFT JOIN yearly_total yt ON r.y = yt.y
WHERE
	rnk <= 3;

--- 15-11-2022 23:37:54
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth as mnth_bestselling
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

/*SELECT itemid AS item_bestseller
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
	rnk = 1;*/
    


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
	r.y, item, total_item, total_year, ROUND(total_item / total_year, 2) as "share"
FROM
	items_ranking_by_revenue r LEFT JOIN yearly_total yt ON r.y = yt.y
WHERE
	rnk <= 3;

--- 15-11-2022 23:38:01
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth as mnth_bestselling
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

/*SELECT itemid AS item_bestseller
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
	rnk = 1;*/
    


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
	r.y, item, total_item, total_year, ROUND(total_item / total_year, 3) as "share"
FROM
	items_ranking_by_revenue r LEFT JOIN yearly_total yt ON r.y = yt.y
WHERE
	rnk <= 3;

--- 15-11-2022 23:39:52
--- PostgreSQL
-- Создаем таблицу Users
/*CREATE TABLE Users(
   userId SERIAL PRIMARY KEY,
   age INT NOT NULL
);*/

/*ALTER TABLE Users 
ALTER COLUMN age TYPE INT
USING age::integer;*/

-- Let there be 500 users with age range between 4 and 85
-- Пусть у нас будет 500 пользователей от 4 до 85 лет
/*INSERT INTO Users(age) 
  SELECT FLOOR(random() * 81 + 4)::int
  FROM GENERATE_SERIES(1, 500);*/

--SELECT * FROM users;

-- Создаем таблицу Items
/*CREATE TABLE Items(
  itemId SERIAL PRIMARY KEY, 
  price DECIMAL(10,2) NOT NULL
);*/

-- Let there be 88 items with different prices between 50000 and 1000000
-- Пусть у нас будет 88 товаров стоимостью от 10 до 1000
/*INSERT INTO Items(price)
SELECT ROUND((random() * 1000 + 10)::DECIMAL, 2)
FROM GENERATE_SERIES(1, 88);*/

--SELECT * FROM items;

-- Создаем таблицу Purchases
/*CREATE TABLE Purchases(
  purchaseId SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  itemId INT NOT NULL,
  FOREIGN KEY (userId)  REFERENCES users(userid),
  FOREIGN KEY (itemId)  REFERENCES items(itemid), 
  date TIMESTAMP
);*/

-- Filling userid, itemid and date in Purchases
-- Let there be 9000 purchases between november 10th and november 15th
-- Заполняем поля userid, itemid и date в таблице Purchases
-- Пусть у нас будет 9 000 покупок в разное время дня с 15.11.2019 до 15.11.2022 (три года)
/*INSERT INTO Purchases(userid, itemid, date)
SELECT 
	FLOOR(random() * 500)::INT + 1,
	FLOOR(random() * 88)::INT + 1, 
    timestamp '2019-11-15 00:00:00' +
       random() * (timestamp '2022-11-15 00:00:00' -
                   timestamp '2019-11-15 00:00:00')
FROM GENERATE_SERIES(1, 9000);*/

--SELECT * FROM purchases;

/*
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно
- пользователи в возрастном диапазоне от 26 до 35 лет включительно
*/

-- Допущение: все пользователи, совершавшие покупки, есть в таблице Users и
--			  все товары, которые покупали, есть в таблице Items

/*WITH
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
;*/



-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

/*SELECT mnth as mnth_bestselling
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
WHERE rnk = 1; */



-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год

/*SELECT itemid AS item_bestseller
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
	rnk = 1;*/
    


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

