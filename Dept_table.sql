 create table dept(   
  deptno     integer,   
  dname      varchar(14),   
  loc        varchar(13),   
  constraint pk_dept primary key (deptno)   
);



insert into dept (DEPTNO, DNAME, LOC) 
values(10, 'ACCOUNTING', 'NEW YORK');


SELECT* from dept;




 create table sales(   
  store_id     INTEGER,   
  store_name      VARCHAR(14),   
  product        VARCHAR(13),   
  quantity      INTEGER,
  cost          INTEGER ,
  constraint pk_store primary key (store_id)   
);
--- Drop Primary 
ALTER table sales drop CONSTRAINT pk_store


alter Table sales alter store_name set DATA TYPE VARCHAR(200)


alter Table sales alter product set DATA TYPE VARCHAR(200)

insert into sales (store_id, store_name, product,quantity,cost) 
values(1, 'Apple Orignal 1', 'iphone 12 Pro',1,1000);


insert into sales (store_id, store_name, product,quantity,cost) 
values
(1, 'Apple Orignal 1', 'Mac Book Pro 13',3,2000),
(1, 'Apple Orignal 1', 'AirPods Pro+',2,500),
(2, 'Apple Orignal 2', 'iphone 12 Pro',2,1000),
(3, 'Apple Orignal 3', 'iphone 12 Pro',1,1000),
(3, 'Apple Orignal 3', 'MacBook Pro 13',1,2000),
(3, 'Apple Orignal 3', 'MacBook Air',4,1100),
(3, 'Apple Orignal 3', 'iphone 12',2,1000),
(3, 'Apple Orignal 3', 'AirPods Pro',3,500),
(4, 'Apple Orignal 4', 'iphone 12 Pro',2,1000),
(4, 'Apple Orignal 4', 'MacBook Pro 13',1,2500)

select * from sales

delete from sales;