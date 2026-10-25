CREATE TABLE IF NOT EXISTS salesman(

salesman_id TEXT PRIMARY KEY,

name TEXT,

city TEXT,

commission TEXT

);

CREATE TABLE IF NOT EXISTS customer(

customer_id TEXT,

name TEXT,

city TEXT,

grade TEXT,

salesman_id TEXT

);

CREATE TABLE IF NOT EXISTS orders(

order_no TEXT PRIMARY KEY,

purchase_amnt REAL,

customer_id REAL,

salesman_id TEXT REAL,

date REAL

);

INSERT INTO salesman(salesman_id,name,city,commission)VALUES

("5001","James Hoog","New York","0.15"),

("5002","Nail Knite","Paris","0.13"),

("5005","Pit Alex","London","0.11"),

("5006","Mc Lyon","Paris","0.14"),

("5007","Paul Adam","Rome","0.13"),

("5003","Lauson Hen","San Jose","0.12");

INSERT INTO customer(customer_id,name,city,grade,salesman_id)VALUES

("3002","nick rimando","new york","100","5001"),

("3007","brad davis","new york","200","5001"),

("3005","graham zusi","california","200","5002"),

("3008","julian green","london","300","5002"),

("3004","fabian johnson","paris","300","5006"),

("3009","geoff cameron","berlin","100","5003"),

("3003","jozy altidor","moscow","200","5007"),

("3001","brad guzan","london","","5005");

INSERT INTO orders(order_no,purchase_amnt,customer_id,salesman_id,date) VALUES

("70001","150.5","2012-10-05","3005","5002"),

("70009","270.65","2012-09-10","3001","5001"),

("70002","65.26","2012-10-05","3002","5003"),

("70004","110.5","2012-08-17","3009","5007"),

("70007","948.5","2012-09-10","3005","5005"),

("70005","2400.6","2012-07-27","3007","5006");

SELECT * FROM salesman;

SELECT * FROM customer;

SELECT* FROM orders;

SELECT customer.name as C_name,
       salesman.name as S_name,
       salesman.city 
FROM customer
JOIN salesman 
ON customer.salesman_id = salesman.salesman_id;