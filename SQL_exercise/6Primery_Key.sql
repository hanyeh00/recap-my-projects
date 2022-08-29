create table Customer
(id int Primary Key identity (1,1),
FirstName varchar(50),
LastName= varchar(50),
age int,
city varchar(50));


create table products
(Id int Primary Key identity(1,1),
ProducttName varchar(50)
price float);

create table Orders
(OrderId int Primary Key identity(1,1),
CustomerId int,
Orderdate Datetime,
ProductId int)



-- vales of table



insert into customert
(FirstName,LastName,Age,city)
values('shervin','hamidi','41','Tehran')

insert into products
(ProducttName, price)
values('ball',2.95)
insert into products
(ProducttName, price)
values('pen',10.75)
insert into products
(ProducttName, price)
values('paper',3)
insert into products
(ProducttName, price)
values('notebook',4)



insert into Orders
(Orderdate,CustomerId,ProductId)
values(GETDATE(), 2,2);

--alter

alter table Orders
add foreign key (customerId)
      references customert(Id)
      
alter table Orders
add foreign key (ProductId)
      references Products(Id)
      
       
