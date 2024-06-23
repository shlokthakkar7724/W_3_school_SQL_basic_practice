CREATE DATABASE W3_practice;
USE W3_practice;

#Question_2
SELECT "This is SQL Exercise, Practice and Solution"; 

##Question_3
SELECT 5, 10, 15;

##Question_4
SELECT 10+15;

##Question_5
SELECT 10+5-2*5/5;

##QUESTION_6
CREATE TABLE salesman(
salesman_id int primary key,
name varchar(20),
city char(20),
commission DECIMAL(7,2)
);
insert into salesman ( salesman_id, name, city, commission)
Values 
(5001, 'james hoog', 'New_york', 0.15),
(5002, 'Knite', 'Paris', 0.13),
( 5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul',  'AdamRome', 0.13),
(5003, 'Lauson Hen', 'San Jose' ,0.12);
SELECT * FROM SALESMAN;
SELECT NAME, COMMISSION FROM SALESMAN;
##qUESTION-7
CREATE TABLE ORDERS(
ORD_NO int,
PURCH_AMT INT,
ORD_DATE DATE,
CUSTOMER_ID int,
salesman_id int,
FOREIGN KEY (salesman_id) REFERENCES salesman (salesman_id)
);

INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id)
VALUES
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007),
(70013, 3045.6, '2012-04-25', 3002, 5001);

##QUESTION_8
SELECT DISTINCT salesman_id
FROM ORDERS;

##QUESTION_9
SELECT name FROM salesman
WHERE CITY = 'PARIS';

##QUESTION_10
CREATE TABLE CUSTOMERS(
customer_id INT PRIMARY KEY,
cust_name VARCHAR(20), 
city VARCHAR(25), 
grade INT NULL,
salesman_id INT,
FOREIGN KEY(salesman_id) REFERENCES salesman(salesman_id)
);
INSERT INTO CUSTOMERS (customer_id, cust_name, city, grade, salesman_id)
VALUES 
    (3002, 'Nick Rimando', 'New York', 100, 5001),
    (3007, 'Brad Davis', 'New York', 200, 5001),
    (3005, 'Graham Zusi', 'California', 200, 5002),
    (3008, 'Julian Green', 'London', 300, 5002),
    (3004, 'Fabian Johnson', 'Paris', 300, 5006),
    (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
    (3003, 'Jozy Altidor', 'Moscow', 200, 5007),
    (3001, 'Brad Guzan', 'London', NULL, 5005);
#QUESTION_11
SELECT ord_no, ord_date, purch_amt FROM ORDERS
WHERE SALESMAN_ID = '5001';

#QUESTION_12
CREATE TABLE NOBLE_PRIZE_WINNERS(
YEAR INT,
SUBJECT CHAR(25),                  
WINNER CHAR(25),                             
COUNTRY CHAR(25),     
CATEGORY CHAR(25)
);

INSERT INTO NOBLE_PRIZE_WINNERS ( YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY)
VALUES 
(1970, 'Physics',                   'Hannes Alfven',                                 'Sweden',                 'Scientist'),
(1970, 'Physics',                   'Louis Neel',                                    'France',                 'Scientist'),
(1970, 'Chemistry',                 'Luis Federico Leloir',                          'France',                 'Scientist'),
(1970,'Physiology',                'Ulf von Euler',                                 'Sweden' ,                'Scientist'),
(1970, 'Physiology',                'Bernard Katz',                                  'Germany',                'Scientist'),
(1970, 'Literature',                'Aleksandr Solzhenitsyn',                        'Russia',                 'Linguist'),
(1970, 'Economics',                 'Paul Samuelson',                                'USA',                    'Economist'),
(1970, 'Physiology',                'Julius Axelrod',                                'USA',                    'Scientist'),
(1971, 'Physics',                   'Dennis Gabor',                                  'Hungary',                'Scientist'),
(1971, 'Chemistry',                 'Gerhard Herzberg',                              'Germany',                'Scientist'),
(1971, 'Peace',                     'Willy Brandt',                                  'Germany',                'Chancellor'),
(1971, 'Literature',                'Pablo Neruda',                                  'Chile',                  'Linguist'),
(1971, 'Economics',                 'Simon Kuznets',                                 'Russia',                 'Economist'),
(1978, 'Peace',                     'Anwar al-Sadat',                                'Egypt',                  'President'),
(1978, 'Peace',                     'Menachem Begin',                                'Israel',                 'Prime Minister'),
(1987, 'Chemistry',                 'Donald J. Cram',                               'USA',                    'Scientist'),
(1987, 'Chemistry',                 'Jean-Marie Lehn',                               'France',                 'Scientist'),
(1987, 'Physiology',                'Susumu Tonegawa',                               'Japan',                  'Scientist'),
(1994, 'Economics',                 'Reinhard Selten',                               'Germany',                'Economist'),
(1994, 'Peace',                     'Yitzhak Rabin',                                 'Israel',                 'Prime Minister'),
(1987, 'Physics',                   'Johannes Georg Bednorz',                        'Germany',                'Scientist'),
(1987, 'Literature',                'Joseph Brodsky',                                'Russia',                 'Linguist'),
(1987, 'Economics',                 'Robert Solow',                                  'USA',                    'Economist'),
(1994, 'Literature',                'Kenzaburo Oe',                                  'Japan',                  'Linguist');

SELECT year, subject, winner FROM NOBLE_PRIZE_WINNERS
WHERE YEAR = '1970';

#QUESTION_13
SELECT WINNER FROM NOBLE_PRIZE_WINNERS 
WHERE YEAR = '1971' AND SUBJECT = 'Literature';

#QUESTION_14
SELECT YEAR, SUBJECT FROM NOBLE_PRIZE_WINNERS
WHERE WINNER = 'Dennis Gabor';

#QUESTION_15
SELECT YEAR, WINNER FROM NOBLE_PRIZE_WINNERS
WHERE YEAR >= 1950 AND SUBJECT = 'Physics';

#QUESTION_16
SELECT WINNER FROM NOBLE_PRIZE_WINNERS
WHERE YEAR BETWEEN 1965 AND 1975 AND SUBJECT = 'Chemistry';

#QUESTION_17
SELECT YEAR, SUBJECT, COUNTRY, WINNER FROM NOBLE_PRIZE_WINNERS
WHERE CATEGORY = 'Prime Minister' AND YEAR >= 1972;

#QUESTION_18
SELECT YEAR, subject, winner, country, category FROM NOBLE_PRIZE_WINNERS
WHERE SUBSTRING_INDEX(WINNER, ' ', 1) = 'Louis';

#QUESTION_19
SELECT YEAR, subject, winner, country, category FROM NOBLE_PRIZE_WINNERS
WHERE SUBJECT = 'PHYSICS'  AND YEAR = 1971
OR SUBJECT = 'ECONOMICS' AND YEAR = 1971;

#QUESTIN_20
SELECT WINNER, YEAR, SUBJECT, CATEGORY FROM NOBLE_PRIZE_WINNERS
WHERE SUBJECT !='Physiology' != 'Economics';

#QUESTION_21
SELECT  year, subject, winner, country, category FROM NOBLE_PRIZE_WINNERS
WHERE SUBJECT = 'Physiology' AND YEAR <= 1971
OR 
SUBJECT = 'Peace' and YEAR >= 1974;

#QUESTION_22
SELECT year, subject, winner, country,category FROM NOBLE_PRIZE_WINNERS
WHERE WINNER = 'Johannes Georg Bednorz';

#QUESTION_23
SELECT year, subject, winner, country,category FROM NOBLE_PRIZE_WINNERS
WHERE SUBJECT NOT LIKE 'P%'
ORDER BY YEAR DESC, WINNER ASC;

#QUESTION_24
SELECT * FROM NOBLE_PRIZE_WINNERS
WHERE YEAR = 1970 
ORDER BY 
CASE
WHEN SUBJECT IN ('Economics', 'Chemistry') THEN 1
ELSE 0
END ASC,
SUBJECT,
WINNER;
#QUESTION_25
CREATE TABLE ITEM_MAST(
PRO_ID INT PRIMARY KEY,
PRO_NAME CHAR(20),
PRO_PRICE INT, 
PRO_COM INT
);
INSERT INTO ITEM_MAST VALUES
(101, 'Mother Board',3200.00, 15),
(102, 'Key Board',450.00,16),
(103, 'ZIP drive',250.00,14),
(104, 'Speaker',550.00,16),
(106, 'DVD drive',900.00,12),
(107, 'CD drive',800.00, 12),
(108,  'Printer', 2600.00, 13),
(109, 'Refill cartridge',350.00, 13),
(110,  'Mouse', 250.00,12);
SELECT * FROM ITEM_MAST;
#QUESTON_26
SELECT * FROM ITEM_MAST 
WHERE PRO_PRICE BETWEEN 200 AND 600;
#QUESTION_27
SELECT AVG(PRO_PRICE)AS AVG_PRICE 
FROM ITEM_MAST
WHERE PRO_COM = 16;

#QUESTION_28
SELECT PRO_NAME, PRO_PRICE FROM ITEM_MAST
WHERE PRO_PRICE >= 250
ORDER BY PRO_PRICE DESC, PRO_NAME ASC;

#QUESTION_29
SELECT AVG(PRO_PRICE), PRO_COM FROM ITEM_MAST
GROUP BY PRO_COM
ORDER BY PRO_COM DESC;

#QUESTION_30
SELECT PRO_PRICE, PRO_NAME 
FROM ITEM_MAST
WHERE (SELECT MIN(PRO_PRICE) FROM ITEM_MAST)
ORDER BY PRO_PRICE ASC;

#Question_31
CREATE TABLE EMP_TABLE(
EMP_IDNO INT PRIMARY KEY,
EMP_FNAME CHAR(20),      
EMP_LNAME CHAR(20),
EMP_DEPT  INT
);
INSERT INTO EMP_TABLE VALUES 
(127323, 'Michale', 'Robbin',  57),
(526689, 'Carlos', 'Snares', 63),
(843795, 'Enric',   'Dosio',  57),
(328717, 'Jhon',    'Snares', 63),
(444527, 'Joseph',  'Dosni', 47),
(659831, 'Zanifer',  'Emily',  47),
(847674, 'Kuleswar',  'Sitaraman', 57),
(748681, 'Henrey',  'Gabriel', 47),
(555935, 'Alex',  'Manuel', 57),
(539569, 'George', 'Mardy',  27),
(733843, 'Mario',  'Saule',  63),
(631548, 'Alan',  'Snappy',  27),
(839139, 'Maria',  'Foster',  57);
SELECT * FROM EMP_TABLE;

SELECT DISTINCT EMP_LNAME FROM EMP_TABLE;
#QUESTION_32
SELECT * FROM EMP_TABLE
WHERE EMP_LNAME = 'Snares';
#QUESTION_33
SELECT * FROM EMP_TABLE
WHERE EMP_DEPT = 57;
##BOOLEAN AND RELATIONAL OPERATORS
#QUESTION_34
SELECT * FROM CUSTOMERS
WHERE GRADE >= 100;
#QUESTION_35
SELECT * FROM CUSTOMERS
WHERE CITY = 'New York' AND GRADE >= 100;
#QUESTION_36
SELECT * FROM CUSTOMERS
WHERE CITY = 'New York' OR GRADE >= 100;
#QUESTIONS_37
SELECT * FROM CUSTOMERS
WHERE CITY = 'New York' OR GRADE <= 100;
#QUESTION_38
SELECT * FROM CUSTOMERS
WHERE CITY NOT LIKE 'New York' OR GRADE >= 100;
#QUESTION_39
SELECT * FROM ORDERS
WHERE ORD_DATE = '2012-09-10' AND SALESMAN_ID >= 5005 OR PURCH_AMT >= 1000;
#QUESTION_40
SELECT * FROM salesman
WHERE COMMISSION>= 0.10 AND COMMISSION<=0.12;
#QUESTION_41
SELECT * FROM ORDERS
WHERE (PURCH_AMT > 200 OR NOT (ord_date >= '2012-02-10' AND customer_id < 3009));
#QUESTION_42
SELECT * FROM ORDERS 
WHERE NOT ((ord_date = 2012-08-17 OR customer_id>=3005) AND purch_amt<1000);
#QUESTION_43
SELECT ORD_NO, PURCH_AMT,
(100 * PURCH_AMT)/6000 AS 'ACHIEVED%',
(100* (6000 - PURCH_AMT)/6000) AS 'UNACHIEVED%'
FROM ORDERS
WHERE (100 * purch_amt) / 6000 > 50;
#QUESTION_44
SELECT emp_idno, emp_fname, emp_lname, emp_dept FROM emp_table
WHERE EMP_LNAME = 'Dosni' or 'Mardy';
#QUESTION_45
SELECT * FROM emp_table
WHERE EMP_DEPT = 47 OR 63;
#QUESTION_46
SELECT * FROM SALESMAN
WHERE CITY = 'Paris' OR 'Rome';
#QUESTION_47
SELECT * FROM SALESMAN
WHERE not city = 'Rome' AND city = 'Paris';
#QUESTIOJN_48
SELECT * FROM customers
WHERE customer_id IN (3007, 3008, 3009); 
#QUESTION_49
SELECT * FROM SALESMAN 
WHERE commission BETWEEN 0.12 AND 0.14;
#QUESTION_50
SELECT * FROM ORDERS
WHERE (PURCH_AMT BETWEEN 500 and 4000) AND NOT PURCH_AMT IN (948.50 and 1983.43);  
#QUESTION_51
SELECT * FROM SALESMAN
WHERE SUBSTRING_INDEX(NAME,1 , 1) between 'A' AND 'L';
#QUESTION_52
SELECT * FROM SALESMAN
WHERE SUBSTRING_INDEX(NAME,1 , 1) NOT between 'A' AND 'L';
#QUESTION_53
SELECT * FROM CUSTOMERS
WHERE CUST_NAME LIKE 'B%';
#QUESTION_54
SELECT * FROM CUSTOMERS
WHERE RIGHT(CUST_NAME, 1) = 'N';
#QUESTION_55
SELECT * FROM SALESMAN
WHERE NAME LIKE 'j__e%';
#QUESTION_56
SELECT * FROM CUSTOMERS 
WHERE GRADE IS NULL;
#QUESTION_57
SELECT * FROM CUSTOMERS 
WHERE GRADE IS NOT NULL;
#QUESTION_58
SELECT * FROM emp_table
WHERE RIGHT(EMP_LNAME, 1) = 'l';
#QUESTION_59
SELECT SUM(PURCH_AMT) FROM ORDERS;
#QUESTION_60
SELECT AVG(PURCH_AMT) FROM ORDERS;
#QUESTION_61
SELECT COUNT(DISTINCT(SALESMAN_ID)) FROM SALESMAN; 
#QUESTION_62
SELECT COUNT(CUST_NAME) FROM CUSTOMERS;
#QUESTION_63
SELECT COUNT(ALL GRADE) FROM CUSTOMERS;
#QUESTION_64
SELECT MAX(PURCH_AMT) FROM ORDERS;
#QUESTION_65
SELECT MIN(PURCH_AMT) FROM ORDERS;
#QUESTION_66
SELECT MAX(GRADE), CITY FROM CUSTOMERS
GROUP BY CITY;
#QUESTION_67
SELECT MAX(PURCH_AMT), CUSTOMER_ID FROM ORDERS
GROUP BY CUSTOMER_ID; 
#QUESTION_68
SELECT CUSTOMER_ID, ORD_DATE, MAX(PURCH_AMT)
FROM ORDERS
GROUP BY CUSTOMER_ID, ORD_DATE;
#QUESTION_69
SELECT MAX(PURCH_AMT), SALESMAN_ID FROM ORDERS
WHERE ORD_DATE LIKE '2012-08-17'
GROUP BY SALESMAN_ID, PURCH_AMT; 
#QUESTION_70
SELECT MAX(PURCH_AMT), CUSTOMER_ID, ORD_DATE FROM ORDERS
WHERE PURCH_AMT > 2000
GROUP BY PURCH_AMT, CUSTOMER_ID, ORD_DATE;
#QUESTION_71
SELECT MAX(PURCH_AMT), CUSTOMER_ID, ORD_DATE
FROM ORDERS
GROUP BY CUSTOMER_ID, ORD_DATE, PURCH_AMT
HAVING MAX(PURCH_AMT) BETWEEN 2000 AND 6000;
#QUESTION_72
SELECT MAX(PURCH_AMT), CUSTOMER_ID, ORD_DATE
FROM ORDERS
GROUP BY CUSTOMER_ID, ORD_DATE, PURCH_AMT
HAVING MAX(PURCH_AMT) IN (2000, 3000, 5760, 6000);
#QUESTION_73
SELECT MAX(PURCH_AMT), CUSTOMER_ID
FROM ORDERS
WHERE CUSTOMER_ID BETWEEN '3002' AND '3007'
GROUP BY CUSTOMER_ID;

#QUESTION_74
SELECT MAX(PURCH_AMT), CUSTOMER_ID
FROM ORDERS
WHERE CUSTOMER_ID BETWEEN '3002' AND '3007' 
GROUP BY CUSTOMER_ID
HAVING MAX(PURCH_AMT) > 1000;
#QUESTION_75
SELECT MAX(PURCH_AMT), SALESMAN_ID FROM ORDERS
WHERE SALESMAN_ID BETWEEN 5003 AND 5008
GROUP BY SALESMAN_ID;
#QUESTION_76
SELECT COUNT(ORD_DATE) FROM ORDERS
WHERE ORD_DATE LIKE '2012-08-17';
#QUESTION_77
SELECT COUNT(SALESMAN_ID), CUSTOMER_ID, ORD_DATE FROM ORDERS
GROUP BY CUSTOMER_ID, ORD_DATE;
#QUESTION_78
SELECT AVG(PRO_PRICE) FROM ITEM_MAST;
#QUESTION_79
SELECT COUNT(PRO_NAME) FROM ITEM_MAST
WHERE PRO_PRICE>=300;
#QUESTION_80
SELECT AVG(PRO_PRICE), PRO_COM FROM ITEM_MAST
GROUP BY PRO_COM;
#QUESTION_81
CREATE TABLE emp_department (
DPT_CODE INT PRIMARY KEY,
DPT_NAME CHAR(50),       
DPT_ALLOTMENT INT
);
INSERT INTO emp_department VALUES 
(57, 'IT', 65000),
(63, 'Finance', 15000),
(47, 'HR', 240000),
(27, 'RD', 55000),
(89, 'QC', 75000);

SELECT SUM(DPT_ALLOTMENT) FROM emp_department;
#QUESTION_82
SELECT COUNT(EMP_IDNO), EMP_DEPT FROM emp_table
GROUP BY EMP_DEPT;
#QUESTION_83
SELECT SALESMAN_ID, CITY, NAME, '%', commission * 100
FROM SALESMAN;
#QUESTION_84
SELECT 'For', ORD_DATE, 'there_are', COUNT(ORD_NO), 'Order'
FROM ORDERS
GROUP BY ORD_DATE;
#QUESTION_85
SELECT * FROM ORDERS
ORDER BY ORD_NO ASC;
#QUESTION_86
SELECT * FROM ORDERS
ORDER BY ORD_DATE, PURCH_AMT DESC;
#QUESTION_87
SELECT CUST_NAME, CITY, GRADE
FROM CUSTOMERS
ORDER BY CUSTOMER_ID;
#QUESGTION_88
SELECT MAX(PURCH_AMT), SALESMAN_ID, ORD_DATE FROM ORDERS 
GROUP BY SALESMAN_ID, ORD_DATE
ORDER BY SALESMAN_ID, ORD_DATE ASC;
#QUESTION_89
SELECT CUSTOMER_ID, CUST_NAME, CITY, GRADE FROM CUSTOMERS
ORDER BY 4 DESC;
#QUESTION_90
SELECT MAX(PURCH_AMT), COUNT(ORD_NO), CUSTOMER_ID FROM orders
GROUP BY CUSTOMER_ID
ORDER BY 2 DESC;
#QUESTION_91
SELECT SUM(PURCH_AMT) , SUM(85*PURCH_AMT)/100 FROM ORDERS
GROUP BY ORD_DATE
ORDER BY ORD_DATE ASC;
#QUESTION_92
SELECT CUSTOMERS.CUST_NAME, SALESMAN.CITY FROM SALESMAN, CUSTOMERS
WHERE CUSTOMERS.CITY = SALESMAN.CITY;
#QUESTION_93
SELECT CUST_NAME, NAME 
FROM CUSTOMERS, SALESMAN
WHERE CUSTOMERS.SALESMAN_ID = SALESMAN.SALESMAN_ID;
#QUESTION_94
SELECT * FROM CUSTOMERS, SALESMAN
WHERE CUSTOMERS.SALESMAN_ID = SALESMAN.SALESMAN_ID AND SALESMAN.CITY != CUSTOMERS.CITY; 
#QUESTION_95
SELECT ORDERS.ORD_NO, CUSTOMERS.CUST_NAME
FROM CUSTOMERS, ORDERS
WHERE ORDERS.CUSTOMER_ID = CUSTOMERS.CUSTOMER_ID;
#QUESTION_96
SELECT CUSTOMERS.CUST_NAME AS CUSTOMER, CUSTOMERS.GRADE AS GRADE
FROM CUSTOMERS, ORDERS, SALESMAN
WHERE orders.customer_id = CUSTOMERS.customer_id
AND orders.salesman_id = salesman.salesman_id
AND salesman.city IS NOT NULL
AND CUSTOMERS.grade IS NOT NULL;
#QUESTION_97
SELECT CUSTOMERS.CUST_NAME AS CUSTOMER, SALESMAN.CITY AS CITY, SALESMAN.COMMISSION AS COMISSION
FROM CUSTOMERS, SALESMAN
WHERE SALESMAN.COMMISSION BETWEEN 0.12 AND 0.14
AND SALESMAN.SALESMAN_ID = CUSTOMERS.SALESMAN_ID
ORDER BY SALESMAN.COMMISSION ASC;
#QUESTION_98
SELECT CUST_NAME AS CUSTOMERS, (ORDERS.PURCH_AMT*SALESMAN.COMMISSION) AS COMMISSION, SALESMAN.COMMISSION AS 'COMMISSION%'
FROM CUSTOMERS, SALESMAN, ORDERS
WHERE CUSTOMERS.SALESMAN_ID = SALESMAN.SALESMAN_ID AND ORDERS.SALESMAN_ID = SALESMAN.SALESMAN_ID 
AND CUSTOMERS.GRADE >= 200 ;
#QUESTION_99
SELECT SALESMAN.NAME, SALESMAN.CITY
FROM SALESMAN, CUSTOMERS
WHERE SALESMAN.CITY = CUSTOMERS.CITY;
#QUESTION_100
SELECT CUSTOMERS.SALESMAN_ID, ORDERS.ORD_NO, SALESMAN.SALESMAN_ID, ORDERS.PURCH_AMT, CUSTOMERS.CUST_NAME
FROM CUSTOMERS, ORDERS, SALESMAN
WHERE CUSTOMERS.SALESMAN_ID=ORDERS.SALESMAN_ID AND ORDERS.PURCH_AMT BETWEEN 500 AND 2000;
#QUESTION_101
SELECT SALESMAN.SALESMAN_ID, CUSTOMERS.CUSTOMER_ID, CUSTOMERS.CUST_NAME, SALESMAN.NAME
FROM SALESMAN, CUSTOMERS
WHERE SALESMAN.SALESMAN_ID = CUSTOMERS.SALESMAN_ID;
#QUESTION_102
SELECT CUSTOMERS.CUST_NAME, CUSTOMERS.CITY, SALESMAN.CITY, SALESMAN.NAME, SALESMAN.COMMISSION
FROM CUSTOMERS, SALESMAN
WHERE CUSTOMERS.SALESMAN_ID = SALESMAN.SALESMAN_ID 
AND 
SALESMAN.COMMISSION >= 0.12;
#QUESTION_103
SELECT CUSTOMERS.CUST_NAME, CUSTOMERS.CITY, SALESMAN.NAME, CUSTOMERS.GRADE, SALESMAN.COMMISSION
FROM CUSTOMERS, SALESMAN, ORDERS
WHERE ORDERS.SALESMAN_ID = CUSTOMERS.SALESMAN_ID 
AND 
CUSTOMERS.SALESMAN_ID = SALESMAN.SALESMAN_ID;
#QUESTION_104
SELECT * FROM ORDERS
NATURAL JOIN CUSTOMERS
NATURAL JOIN SALESMAN;

#Question_105
SELECT customers.city, customers.cust_name, salesman.name
FROM salesman
JOIN customers ON salesman.city = customers.city;
#Question_106
select orders.ord_no, orders.PURCH_AMT, customers.cust_name, customers.city
from orders
right join customers
on customers.salesman_id = orders.salesman_id
where PURCH_AMT between 500 and 2000;
#Question_107
SELECT customers.cust_name, customers.city, customers.salesman_id, salesman.name
from salesman
right join customers
on customers.salesman_id = salesman.salesman_id;
#Question_108
select *
from salesman
right join customers
on salesman.salesman_id = customers.salesman_id
where commission >= 0.12
order by commission;
#Question_109
select * from
customers
inner join orders
on customers.salesman_id = orders.salesman_id;
#Question_110
# From the following tables write a SQL query to display the customer name, 
#customer city, grade, salesman, salesman city. The results should be sorted by 
#ascending customer_id. 
Select customers.cust_name, customers.city, customers.grade, salesman.name, salesman.city, salesman.salesman_id
from salesman
left join customers
on salesman.salesman_id = customers.salesman_id
order by salesman_id;
#Question_111
select salesman.city, salesman.name, customers.cust_name, customers.city, customers.grade
from customers
left join salesman
on customers.salesman_id = salesman.salesman_id
order by customers.customer_id;
#Question_112
select customers.cust_name, customers.city, orders.ORD_NO, orders.ORD_DATE, orders.ORD_DATE
from customers
left outer join orders
on orders.CUSTOMER_ID = customers.customer_id;
#Question_113
select customers.customer_id, customers.cust_name, customers.city, customers.salesman_id, customers.cust_name
from salesman
right outer join customers
on customers.salesman_id = salesman.salesman_id
order by customers.salesman_id;
#Question_114
select customers.customer_id, customers.cust_name, customers.city, customers.salesman_id, customers.cust_name
from customers
left join salesman
on customers.salesman_id = salesman.salesman_id
group by salesman.salesman_id
having count(salesman.salesman_id > 1);
#question_115
select customers.cust_name, customers.city, customers.customer_id
from salesman
left join customers
on salesman.salesman_id = customers.salesman_id
left join orders
on orders.CUSTOMER_ID = customers.customer_id
where orders.PURCH_AMT > 2000 
GROUP BY customers.cust_name, customers.city, customers.customer_id
HAVING COUNT(DISTINCT orders.ord_no) > 1
ORDER BY customers.customer_id;
#HACKER_RANK_PRACTICE
SELECT MIN(length(CUST_NAME)) AS MIN_LENGTH, MAX(length(CUST_NAME)) AS MAX_LENGTH FROM customers;
select max(length(cust_name)), min(length(cust_name)) from customers





 








