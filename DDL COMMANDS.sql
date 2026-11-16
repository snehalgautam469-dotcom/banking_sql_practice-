create database bank;
show databases;
use bank;

create table customer
(
cust_id int primary key,
cust_first_name varchar(50),
cust_last_name varchar(50),
cust_email varchar(100),
cust_phno varchar(20),
cust_dob date,
gender enum("M","F")
);

INSERT INTO customer
(cust_id, cust_first_name, cust_last_name, cust_email, cust_phno, cust_dob, gender)
VALUES
(1, 'Rahul', 'Sharma', 'rahul.sharma@example.com', '9876543210', '1995-04-12', 'M'),
(2, 'Priya', 'Patel', 'priya.patel@example.com', '9876543211', '1998-08-25', 'F'),
(3, 'Amit', 'Verma', 'amit.verma@example.com', '9876543212', '1992-01-15', 'M'),
(4, 'Sneha', 'Desai', 'sneha.desai@example.com', '9876543213', '1997-11-03', 'F'),
(5, 'Arjun', 'Mehta', 'arjun.mehta@example.com', '9876543214', '1990-06-20', 'M'),
(6, 'Neha', 'Kulkarni', 'neha.kulkarni@example.com', '9876543215', '1996-09-14', 'F'),
(7, 'Vikram', 'Singh', 'vikram.singh@example.com', '9876543216', '1988-03-22', 'M'),
(8, 'Anjali', 'Gupta', 'anjali.gupta@example.com', '9876543217', '1999-12-10', 'F'),
(9, 'Rohan', 'Shah', 'rohan.shah@example.com', '9876543218', '1994-07-05', 'M'),
(10, 'Pooja', 'Iyer', 'pooja.iyer@example.com', '9876543219', '1993-02-18', 'F'),
(11, 'Karan', 'Malhotra', 'karan.malhotra@example.com', '9876543220', '1989-10-30', 'M'),
(12, 'Divya', 'Nair', 'divya.nair@example.com', '9876543221', '1995-05-16', 'F'),
(13, 'Suresh', 'Reddy', 'suresh.reddy@example.com', '9876543222', '1985-08-09', 'M'),
(14, 'Kavita', 'Joshi', 'kavita.joshi@example.com', '9876543223', '1991-04-27', 'F'),
(15, 'Aditya', 'Kapoor', 'aditya.kapoor@example.com', '9876543224', '1997-01-11', 'M'),
(16, 'Meera', 'Rao', 'meera.rao@example.com', '9876543225', '1996-06-08', 'F'),
(17, 'Nikhil', 'Jain', 'nikhil.jain@example.com', '9876543226', '1993-09-19', 'M'),
(18, 'Simran', 'Kaur', 'simran.kaur@example.com', '9876543227', '1998-03-14', 'F'),
(19, 'Manish', 'Chawla', 'manish.chawla@example.com', '9876543228', '1987-12-21', 'M'),
(20, 'Aishwarya', 'Menon', 'aishwarya.menon@example.com', '9876543229', '1994-11-07', 'F'),
(21, 'Deepak', 'Mishra', 'deepak.mishra@example.com', '9876543230', '1990-02-25', 'M'),
(22, 'Tanvi', 'Shah', 'tanvi.shah@example.com', '9876543231', '1999-07-17', 'F'),
(23, 'Rajesh', 'Kumar', 'rajesh.kumar@example.com', '9876543232', '1984-05-13', 'M'),
(24, 'Shruti', 'Bansal', 'shruti.bansal@example.com', '9876543233', '1992-10-04', 'F'),
(25, 'Abhishek', 'Sinha', 'abhishek.sinha@example.com', '9876543234', '1995-08-29', 'M'),
(26, 'Isha', 'Thakur', 'isha.thakur@example.com', '9876543235', '2000-01-23', 'F'),
(27, 'Varun', 'Deshmukh', 'varun.deshmukh@example.com', '9876543236', '1991-06-15', 'M'),
(28, 'Ritu', 'Agarwal', 'ritu.agarwal@example.com', '9876543237', '1997-04-09', 'F'),
(29, 'Siddharth', 'Bose', 'siddharth.bose@example.com', '9876543238', '1989-09-26', 'M'),
(30, 'Nandini', 'Pillai', 'nandini.pillai@example.com', '9876543239', '1996-12-02', 'F');


create table accounts
(
accounts_id int primary key,
accounts_type varchar(30),
accounts_balance decimal(10,2),
cust_id int,
branch_id int,
foreign key (cust_id) references customer(cust_id)
);

INSERT INTO accounts
(accounts_id, accounts_type, accounts_balance, cust_id, branch_id)
VALUES
(101, 'Savings',  '75000.50', 1,  1),
(102, 'Current',  '250000.00', 2,  2),
(103, 'Savings',  '45000.75', 3,  1),
(104, 'Salary',   '62000.00', 4,  3),
(105, 'Savings',  '125000.50', 5,  2),
(106, 'Current',  '350000.00', 6,  4),
(107, 'Savings',  '89000.25', 7,  3),
(108, 'Salary',   '54000.00', 8,  1),
(109, 'Savings',  '67000.80', 9,  5),
(110, 'Current',  '425000.00', 10, 2),
(111, 'Savings',  '95000.00', 11, 4),
(112, 'Salary',   '58000.50', 12, 3),
(113, 'Current',  '550000.00', 13, 5),
(114, 'Savings',  '72000.25', 14, 1),
(115, 'Salary',   '63000.00', 15, 2),
(116, 'Savings',  '110000.75', 16, 4),
(117, 'Current',  '275000.00', 17, 3),
(118, 'Savings',  '48000.50', 18, 5),
(119, 'Salary',   '85000.00', 19, 1),
(120, 'Savings',  '92000.25', 20, 2),
(121, 'Current',  '620000.00', 21, 4),
(122, 'Savings',  '56000.00', 22, 3),
(123, 'Salary',   '71000.50', 23, 5),
(124, 'Savings',  '135000.00', 24, 1),
(125, 'Current',  '480000.75', 25, 2),
(126, 'Savings',  '39000.25', 26, 4),
(127, 'Salary',   '68000.00', 27, 3),
(128, 'Savings',  '105000.50', 28, 5),
(129, 'Current',  '320000.00', 29, 1),
(130, 'Savings',  '78000.75', 30, 2);


create table branches
(
branch_id int primary key,
branch_name varchar(80),
branch_adress varchar(80),
branch_phone varchar(20)
);

INSERT INTO branches
(branch_id, branch_name, branch_adress, branch_phone)
VALUES
(1, 'Mumbai Main Branch', 'Fort, Mumbai, Maharashtra', '02222671234'),
(2, 'Delhi Central Branch', 'Connaught Place, New Delhi', '01123456780'),
(3, 'Pune City Branch', 'Shivaji Nagar, Pune, Maharashtra', '02025671234'),
(4, 'Bangalore MG Road Branch', 'MG Road, Bengaluru, Karnataka', '08025671234'),
(5, 'Chennai Central Branch', 'T Nagar, Chennai, Tamil Nadu', '04423456780'),
(6, 'Hyderabad Main Branch', 'Abids, Hyderabad, Telangana', '04024671234'),
(7, 'Kolkata Park Street Branch', 'Park Street, Kolkata, West Bengal', '03322456780'),
(8, 'Ahmedabad Branch', 'CG Road, Ahmedabad, Gujarat', '07926451234'),
(9, 'Jaipur City Branch', 'MI Road, Jaipur, Rajasthan', '01412345678'),
(10, 'Lucknow Main Branch', 'Hazratganj, Lucknow, Uttar Pradesh', '05222345678'),
(11, 'Nagpur Branch', 'Sitabuldi, Nagpur, Maharashtra', '07122345678'),
(12, 'Nashik Branch', 'College Road, Nashik, Maharashtra', '02532345678'),
(13, 'Surat Branch', 'Ring Road, Surat, Gujarat', '02612345678'),
(14, 'Indore Branch', 'Vijay Nagar, Indore, Madhya Pradesh', '07312345678'),
(15, 'Bhopal Branch', 'MP Nagar, Bhopal, Madhya Pradesh', '07552345678'),
(16, 'Kochi Branch', 'MG Road, Kochi, Kerala', '04842345678'),
(17, 'Thiruvananthapuram Branch', 'Palayam, Thiruvananthapuram, Kerala', '04712345678'),
(18, 'Chandigarh Branch', 'Sector 17, Chandigarh', '01722345678'),
(19, 'Gurgaon Branch', 'Sector 14, Gurugram, Haryana', '01242345678'),
(20, 'Noida Branch', 'Sector 18, Noida, Uttar Pradesh', '01202345678'),
(21, 'Patna Branch', 'Fraser Road, Patna, Bihar', '06122345678'),
(22, 'Ranchi Branch', 'Main Road, Ranchi, Jharkhand', '06512345678'),
(23, 'Bhubaneswar Branch', 'Janpath, Bhubaneswar, Odisha', '06742345678'),
(24, 'Visakhapatnam Branch', 'Dwaraka Nagar, Visakhapatnam, Andhra Pradesh', '08912345678'),
(25, 'Coimbatore Branch', 'RS Puram, Coimbatore, Tamil Nadu', '04222345678'),
(26, 'Mysore Branch', 'Sayyaji Rao Road, Mysuru, Karnataka', '08212345678'),
(27, 'Vadodara Branch', 'Alkapuri, Vadodara, Gujarat', '02652345678'),
(28, 'Dehradun Branch', 'Rajpur Road, Dehradun, Uttarakhand', '01352345678'),
(29, 'Amritsar Branch', 'Lawrence Road, Amritsar, Punjab', '01832345678'),
(30, 'Guwahati Branch', 'GS Road, Guwahati, Assam', '03612345678');


CREATE TABLE loans
(
    loan_id INT PRIMARY KEY,
    loan_amount DECIMAL(10,2),
    interest_rate DECIMAL(5,2),
    start_date DATE,
    end_date DATE,
    cust_id INT,
    FOREIGN KEY (cust_id) REFERENCES customer(cust_id)
);

INSERT INTO loans
(loan_id, loan_amount, interest_rate, start_date, end_date, cust_id)
VALUES
(201, 500000.00, 8.50, '2022-01-15', '2032-01-15', 1),
(202, 250000.00, 9.25, '2021-03-10', '2026-03-10', 2),
(203, 750000.00, 8.75, '2023-06-01', '2033-06-01', 3),
(204, 150000.00, 10.50, '2022-08-20', '2027-08-20', 4),
(205, 1200000.00, 8.25, '2021-11-05', '2041-11-05', 5),
(206, 300000.00, 9.50, '2023-02-12', '2028-02-12', 6),
(207, 850000.00, 8.60, '2022-04-18', '2032-04-18', 7),
(208, 200000.00, 10.00, '2023-09-25', '2028-09-25', 8),
(209, 950000.00, 8.40, '2021-07-14', '2036-07-14', 9),
(210, 400000.00, 9.75, '2022-12-01', '2029-12-01', 10),
(211, 1500000.00, 8.30, '2023-01-10', '2043-01-10', 11),
(212, 180000.00, 10.25, '2021-05-22', '2026-05-22', 12),
(213, 600000.00, 9.00, '2022-10-15', '2032-10-15', 13),
(214, 350000.00, 9.50, '2023-03-08', '2029-03-08', 14),
(215, 2000000.00, 8.15, '2021-09-12', '2041-09-12', 15),
(216, 275000.00, 10.00, '2022-06-30', '2027-06-30', 16),
(217, 1100000.00, 8.45, '2023-04-05', '2038-04-05', 17),
(218, 225000.00, 9.80, '2021-12-18', '2027-12-18', 18),
(219, 900000.00, 8.70, '2022-02-25', '2032-02-25', 19),
(220, 450000.00, 9.25, '2023-07-11', '2030-07-11', 20),
(221, 1750000.00, 8.20, '2021-04-16', '2041-04-16', 21),
(222, 125000.00, 10.75, '2022-11-09', '2027-11-09', 22),
(223, 650000.00, 8.90, '2023-05-19', '2033-05-19', 23),
(224, 320000.00, 9.60, '2021-08-27', '2027-08-27', 24),
(225, 2500000.00, 8.10, '2022-03-14', '2042-03-14', 25),
(226, 190000.00, 10.20, '2023-10-01', '2028-10-01', 26),
(227, 800000.00, 8.65, '2021-06-21', '2036-06-21', 27),
(228, 375000.00, 9.40, '2022-09-17', '2029-09-17', 28),
(229, 1350000.00, 8.35, '2023-02-28', '2038-02-28', 29),
(230, 280000.00, 10.00, '2022-05-13', '2027-05-13', 30);


create table transactions
(
transaction_id int primary key,
transaction_date date,
amount decimal(10,2),
transaction_type varchar(50),
accounts_id int,
foreign key (accounts_id) references accounts(accounts_id)
);

INSERT INTO transactions
 (transaction_id, transaction_date, amount, transaction_type, accounts_id)
VALUES
(301, '2024-01-05', 15000.00, 'Deposit', 101),
(302, '2024-01-08', 5000.00, 'Withdrawal', 102),
(303, '2024-01-12', 25000.00, 'Deposit', 103),
(304, '2024-01-15', 3500.00, 'UPI Transfer', 104),
(305, '2024-01-18', 12000.00, 'Online Payment', 105),
(306, '2024-01-22', 8000.00, 'Withdrawal', 106),
(307, '2024-02-02', 30000.00, 'Deposit', 107),
(308, '2024-02-05', 4500.00, 'UPI Transfer', 108),
(309, '2024-02-09', 7500.00, 'ATM Withdrawal', 109),
(310, '2024-02-12', 18000.00, 'Deposit', 110),
(311, '2024-02-16', 6500.00, 'Online Payment', 111),
(312, '2024-02-20', 9500.00, 'Withdrawal', 112),
(313, '2024-03-01', 40000.00, 'Deposit', 113),
(314, '2024-03-04', 2500.00, 'ATM Withdrawal', 114),
(315, '2024-03-08', 11000.00, 'UPI Transfer', 115),
(316, '2024-03-12', 22000.00, 'Deposit', 116),
(317, '2024-03-15', 5500.00, 'Online Payment', 117),
(318, '2024-03-19', 3000.00, 'Withdrawal', 118),
(319, '2024-04-02', 35000.00, 'Deposit', 119),
(320, '2024-04-05', 7000.00, 'UPI Transfer', 120),
(321, '2024-04-09', 12500.00, 'ATM Withdrawal', 121),
(322, '2024-04-13', 28000.00, 'Deposit', 122),
(323, '2024-04-17', 4000.00, 'Online Payment', 123),
(324, '2024-04-21', 8500.00, 'Withdrawal', 124),
(325, '2024-05-03', 50000.00, 'Deposit', 125),
(326, '2024-05-07', 6000.00, 'UPI Transfer', 126),
(327, '2024-05-11', 9500.00, 'ATM Withdrawal', 127),
(328, '2024-05-15', 32000.00, 'Deposit', 128),
(329, '2024-05-19', 7500.00, 'Online Payment', 129),
(330, '2024-05-23', 15000.00, 'Withdrawal', 130);

select*from customer;


select cust_last_name,cust_phno from customer;
select cust_email,gender from customer;

select * from customer
where cust_first_name like "A%";

select * from customer
where cust_last_name like "M%";

select * from customer
order by cust_first_name desc;

select * from accounts;

select * from accounts
order by accounts_balance
limit 5;

select count(*) as total_customer
from customer;

desc customer;

select * from customer
where cust_id is null
or cust_first_name is null
or cust_last_name is null
or cust_email is null 
or cust_phno is null
or cust_dob is null
or gender is null ;

select * from customer
where cust_dob=(select max(cust_dob) from customer);

select * from customer
where cust_dob=(select min(cust_dob) from customer);

select * from customer;

select count(*) as customer_befor_1990
from customer
where year(cust_dob)<1990;

select count(*) as customer_after_1990
from customer
where year(cust_dob)>1990;

select * from accounts
where accounts_balance is null;

select sum(accounts_balance) as accounts_total_balance
from accounts;

select avg(accounts_balance) as accounts_avg_balance
from accounts;

select * from transactions;

select sum(amount) as total_transaction_amount
from transactions;

select transaction_type,
count(*) as total_transactions
from transactions
group by transaction_type;

select transaction_type,
count(*) as transaction_count from transactions
group by transaction_type
order by transaction_count desc
limit 1;

select avg(amount) as average_transaction_amount
from transactions;

select * from transactions
where transaction_date is null 
or amount is null;

select * from accounts;


select accounts_type,sum(accounts_balance) as total_balance
from accounts
group by accounts_type
having total_balance>550000;

select year(now());
select day(current_date());
select current_date();

select timestampdiff(year,"2022-03-14",current_date());
select * from customer;
select *,timestampdiff(year,cust_dob,now()) as age from customer;

alter table customer
add column age int;

update customer
set age=timestampdiff(year,cust_dob,now());

set sql_safe_updates=0;

select * from accounts;

select accounts_id,accounts_type,accounts_balance,round(avg(accounts_balance)
over(partition by accounts_type)) as average
from accounts;

select accounts_type,accounts_balance,dense_rank()
over(partition by accounts_type order by accounts_balance) as dense_ranks
from accounts;



