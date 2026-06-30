create table TCS(
Emp_id int primary key,
First_name varchar(30),
Department varchar(30),
Salary decimal(7,2),
City varchar(30),
Hired_date date,
Phone_no varchar(14),
Bonus int,
Manager_id int);

insert into TCS values(
1,'Arun','HR',25000,'Chennai','2024-01-15','9876543210',2000,101);

insert into TCS values
(2, 'Priya', 'IT', 45000, 'Bangalore', '2024-02-10', 9876543211, 5000, 102),
(3, 'Karthik', 'Sales', 35000, 'Chennai', '2024-03-05', 9876543212, 3000, NULL),
(4, 'Divya', 'IT', 50000, 'Hyderabad', '2024-04-12', 9876543213, 6000, 102),
(5, 'Rahul', 'Finance', 40000, 'Mumbai', '2024-05-18', 9876543214, 4000, 103),
(6, 'Anu', 'HR', 28000, 'Chennai', '2024-06-22', 9876543215, 2500, NULL),
(7, 'Vijay', 'Sales', 38000, 'Coimbatore', '2024-07-01', 9876543216, 3500, 104),
(8, 'Meena', 'Finance', 42000, 'Bangalore', '2024-08-14', 9876543217, 4500, 103),
(9, 'Suresh', 'IT', 55000, 'Chennai', '2024-09-10', 9876543218, 7000, 102),
(10, 'Lakshmi', 'HR', 30000, 'Madurai', '2024-10-05', 9876543219, 2800, 101);

Select First_name,salary from TCS;
select first_name,department,city from TCS;
select phone_no from TCS;
select Hired_date from tcs;

Select * from TCS;

select distinct department from TCS;
select distinct city from TCS;
select distinct department,city from tcs;
select distinct salary from tcs;
select distinct Manager_id from tcs;

select * from tcs where salary>40000;
select * from tcs where Department='IT';
select * from tcs where city='chennai';
select * from tcs where Hired_date > '2024-06-01';
select * from tcs where bonus>=5000;

select * from tcs where First_name like 'A%';
select * from tcs where First_name like '%A';
select * from tcs where First_name like '%ya%';
select * from tcs where city like 'C%';
select * from tcs where First_name like '_r%';

select * from tcs where department in ('HR','IT');
select * from tcs where city in('Chennai','Bangalore');
select * from tcs where salary in(25000,30000,50000);
select * from tcs where Manager_id in(101,102);
select * from tcs where department in ('HR','Sales','Finance');

select * from tcs where department not in ('HR');
select * from tcs where city not in ('Chennai');
select * from tcs where salary not in (25000,28000);
select * from tcs where Manager_id not in (102);
select * from tcs where department not in ('IT','Sales');

select * from tcs where Manager_id is null;
select First_name,Manager_id from tcs where Manager_id is not null;
select * from tcs where Manager_id is not null;

select * from tcs where Salary between 30000 and 45000;
select * from tcs where Hired_date between '2024-03-01' and '2024-08-31';
select * from tcs where bonus between 3000 and 6000;
select * from tcs where Emp_id between 3 and 8;

select * from tcs where Salary not between 30000 and 45000;
select * from tcs where bonus not between 3000 and 6000;
select * from tcs where Hired_date between '2024-04-01' and '2024-09-01';

select sum(salary) from tcs;
select avg(salary) from tcs;
select count(First_name) from tcs;
select max(salary) from tcs;
select min(salary) from tcs;

select current_date();
select current_time();
select now();
select date_format(Current_date(),'%d-%m-%y');
select date_format(Current_time(),'%r');

select department, count(*) as No_of_employees from tcs group by department;
select department,avg(Salary) as Average_Salary from tcs group by department;
select department,max(salary) as Maximum_salary from tcs group by department;
select department,count(*) from tcs group by department having avg(salary)>40000;
select * from tcs where First_name like '_____';
select * from tcs where First_name like 'A%N';

select first_name from tcs where Manager_id is null and city='Chennai';

select Max(salary) from tcs where salary < (select max(salary) from tcs);


