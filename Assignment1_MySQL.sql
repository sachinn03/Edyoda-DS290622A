CREATE DATABASE assignment1_sql;

USE assignment1_sql;

CREATE TABLE SalesPeople (
Snum INT PRIMARY KEY,
Sname VARCHAR(15) UNIQUE,
City VARCHAR(15),
Comm INT
);

INSERT INTO SalesPeople (Snum,Sname,City,Comm) VALUES (1001, "Peel" ,"London" ,12);
INSERT INTO SalesPeople (Snum,Sname,City,Comm) VALUES (1002, "Serres" ,"Sanjose" ,13);
INSERT INTO SalesPeople (Snum,Sname,City,Comm) VALUES (1004, "Motika" ,"London" ,11);
INSERT INTO SalesPeople (Snum,Sname,City,Comm) VALUES (1007, "Rifkin" ,"Barcelona" ,15);
INSERT INTO SalesPeople (Snum,Sname,City,Comm) VALUES (1003, "Axelrod" ,"Newyork" ,10);

SELECT * FROM SalesPeople;

CREATE TABLE Customers(
Cnum INT PRIMARY KEY,
Cname VARCHAR(15),
City VARCHAR(15) NOT NULL,
Snum INT,
FOREIGN KEY (Snum) REFERENCES SalesPeople (Snum)
);

INSERT INTO Customers (Cnum,Cname,City,Snum) VALUES (2001, "Hoffman", "London" ,1001);
INSERT INTO Customers (Cnum,Cname,City,Snum) VALUES (2002, "Giovanni", "Rome" ,1003);
INSERT INTO Customers (Cnum,Cname,City,Snum) VALUES (2003,  "Liu", "Sanjose", 1002);
INSERT INTO Customers (Cnum,Cname,City,Snum) VALUES (2004,  "Grass", "Berlin", 1002);
INSERT INTO Customers (Cnum,Cname,City,Snum) VALUES (2006, "Clemens", "London", 1001);
INSERT INTO Customers (Cnum,Cname,City,Snum) VALUES (2008, "Cisneros", "Sanjose", 1007);
INSERT INTO Customers (Cnum,Cname,City,Snum) VALUES (2007, "Pereira", "Rome", 1004);

SELECT * FROM Customers;

CREATE TABLE Orders(
Onum INT PRIMARY KEY,
Amt DECIMAL(10,5),
Odate DATE,
Cnum INT,
Snum INT,
FOREIGN KEY (Snum) REFERENCES SalesPeople (Snum),
FOREIGN KEY (Cnum) REFERENCES Customers (Cnum)
);

INSERT INTO Orders (Onum,Amt,Odate,Cnum,Snum) VALUES (3001, 18.69, '1990-10-3' , 2008, 1007);
INSERT INTO Orders (Onum,Amt,Odate,Cnum,Snum) VALUES (3003, 767.19, '1990-10-3' ,2001, 1001);
INSERT INTO Orders (Onum,Amt,Odate,Cnum,Snum) VALUES (3002, 1900.10, '1990-10-3', 2007, 1004);
INSERT INTO Orders (Onum,Amt,Odate,Cnum,Snum) VALUES (3005,  5160.45, '1990-10-3', 2003, 1002);
INSERT INTO Orders (Onum,Amt,Odate,Cnum,Snum) VALUES (3006,  1098.16, '1990-10-3', 2008, 1007);
INSERT INTO Orders (Onum,Amt,Odate,Cnum,Snum) VALUES (3009, 1713.23, '1990-10-4' ,2002, 1003);
INSERT INTO Orders (Onum,Amt,Odate,Cnum,Snum) VALUES (3007,  75.75, '1990-10-4', 2004, 1002);
INSERT INTO Orders (Onum,Amt,Odate,Cnum,Snum) VALUES (3008  ,4273.00, '1990-10-5', 2006, 1001);
INSERT INTO Orders (Onum,Amt,Odate,Cnum,Snum) VALUES (3010  ,1309.95, '1990-10-6' ,2004, 1002);
INSERT INTO Orders (Onum,Amt,Odate,Cnum,Snum) VALUES (3011  ,9891.88, '1990-10-6', 2006 ,1001);

SELECT * FROM Orders;


####################################

SELECT COUNT(*) FROM SalesPeople WHERE Sname LIKE 'a%' or Sname LIKE 'A%';

SELECT DISTINCT(Sname), o.Amt FROM SalesPeople s INNER JOIN Orders o ON s.Snum = o.Snum WHERE o.Amt > 2000;

SELECT COUNT(DISTINCT(Sname)) FROM SalesPeople WHERE City = 'Newyork';

SELECT COUNT(DISTINCT(Sname)) FROM SalesPeople WHERE City = 'London'  or City = 'Paris';

SELECT  SalesPeople.Sname, Orders.Odate ,COUNT(*) as Number_of_Orders  FROM SalesPeople,Orders WHERE  SalesPeople.Snum= Orders.Snum  GROUP BY SalesPeople.Sname, Orders.Odate;
