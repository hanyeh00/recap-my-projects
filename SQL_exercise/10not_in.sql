create table Customer
(id int primary key identity(1,1),
  name varchar(50))
Go  
create table Orders
(id int primary key identity(1,1),
  customerId int foreign key references Customer(id)) 
  
  Go
  
  insert into Customer (name) values('joe')
  insert into Customer (name) values('Henry')
  insert into Customer (name) values('sam')
  insert into Customer (name) values('Max')
  GO
  insert into Orders (customerId) values(3)
  insert into Orders (customerId) values(1)

  ----
  /*Write an SQL query to report all customers who never order anything.*/
  select Customer.name from Customer
  where [id] not in 
  (select customerId from Orders)
  

