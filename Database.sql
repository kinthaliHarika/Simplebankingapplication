create database harika; 
use harika;
create table student(roll integer,name varchar(50),Grade float);
select * from student;
create table Accounts(Accountno float,AccountholderName varchar(500),Balance float)ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 select * from Accounts;
 select * from  Accounts where Accountno= 32178456;
insert into Accounts values(32178456,'Harika',20000);
insert into Accounts values(58963413,'B',15000);
insert into Accounts values(66863413,'B',25000);
create table Transactiondetails(Transactionid INT NOT NULL unique auto_increment,DateofTransaction datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,Amount int NOT NULL, TransferredAccount float NOT NULL, PRIMARY KEY(`Transactionid`))ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO Transactiondetails VALUES (10500,'2020-07-25 14:29:36',500,32021457),(2470,'2020-07-26 08:45:13',1000,32021457),(2586,'2020-07-26 15:23:30',200,32023568),(9986,'2020-07-29 00:46:25',600,32023568),(1001,'2020-07-29 13:27:36',250,32023568),(1002,'2020-07-29 13:28:53',1000,666655552),(1003,'2020-07-29 13:32:15',1000,666655552);
Select * from Transactionsdetails;
SHOW VARIABLES WHERE Variable_name='port';


