-- -- Question: Write a SQL query to select all columns from a table named "employees".
    select * from emp;

-- -- Question: How would you select only the "first_name" and "last_name" columns from the "employees" table?


-- Question: Write a query to select all employees from the "employees" table where the "salary" is greater than 2000.

    select * FROM emp where sal>2000;

-- Question: How would you select distinct department names from the "employees" table?

    SELECT DISTINCT dname from dept;

-- Question: Write a query to select employees whose first name starts with 'A'.

    select * from emp
    where ename like 'K%';

    SELECT * from emp where substr(ename,1,1)='A';

-- Question: How would you select employees with a salary between 40000 and 60000?

    SELECT * from emp where sal BETWEEN 800 and 1000;

-- Question: Write a query to select employees from the ACCOUNTING or SALES department.

    SELECT * FROM emp a , dept b  where a.deptno=b.deptno and b.dname IN('ACCOUNTING','SALES');

-- Question: How would you select the top 5 highest paid employees?

    SELECT * 
    FROM emp
    ORDER BY sal DESC
    LIMIT 5;



-- Question: Write a query to select employees whose last name ends with 'son' and have a salary greater than 45000.

    SELECT * from emp;

-- Question: How would you select employees and order them by department ascending and then by salary descending?


-- Question: How would you select employees whose first name is either 'John', 'Jane', or 'Jim'?


-- Question: Write a query to select all employees except those in the 'Finance' department.


-- Question: How would you select employees hired in the year 2022?

-- Question: Write a query to select the first 10 employees when ordered alphabetically by last name.


-- Question: How would you select employees and concatenate their first and last names into a single column?


-- Question: Write a query to select employees who don't have a manager (assuming manager_id can be NULL).


-- Question: How would you select employees and calculate their years of service?



-- Question: Write a query to select employees and categorize their salaries as 'Low', 'Medium', or 'High'.


-- Question: How would you select the top 5% of employees based on salary?


-- Question: Write a query to select employees hired in the last 30 days.


-- Question: How would you select employees and display their salary in thousands (e.g., 50000 as 50K)?


-- Question: Write a query to select employees whose names contain the letter 'e' (case insensitive).


-- Question: How would you select the second highest salary from the employees table?


-- Question: Write a query to select employees and calculate their daily rate (assuming 260 working days per year).


-- Question: How would you select employees whose first name and last name start with the same letter?



-------------------------------------------------------------------------------------------------
--with Query ko ham CTE bhi bolte hen Comman Table expression or sub-query Factoring bhi bolte hen

--Qestion---write the query find those employee whos salary then the avg salary

select avg(sal) from emp;

--method-1:
select * from emp where sal>(select avg(sal) from emp);

with avg_sal (avgsal) AS --temp table name avg_sal,column is avgsal
(select avg(sal) from emp)--this data is store in temp table
select * from emp,avg_sal WHERE
sal>avgsal;

--find Stores who's sales where better then the avg sales accross all store
select * from sales

--avg sales of each store.total sales of each store
select store_id,store_name ,sum(quantity*cost) from sales group BY store_name,store_id order by store_id


select store_id,store_name ,avg(quantity*cost),sum(quantity*cost) from sales group BY store_name,store_id order by store_id

select store_id,sum(cost) from sales GROUP BY store_id

select store_id,avg(cost) from sales GROUP BY store_id

--avg of all stores

select avg(total_sales) from (select store_id,sum(cost) total_sales from sales GROUP BY store_id)

with total_sales(store_id,total_sale_per_store) AS
(select store_id,sum(cost) from sales GROUP BY store_id),

    avrge_sales(avg_sales_for_all_store) AS
        (select avg(total_sale_per_store) as avg_sales_for_all_store from total_sales)
        
        select * from  total_sales ts join avrge_sales av on 
        ts.total_sale_per_store>av.avg_sales_for_all_store