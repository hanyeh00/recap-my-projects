select email,

substring (email from position ('.' in email )+1 for length (last_name)) as first
,
substring(email,2,3),
SUBSTRING(email, position ('.' in email)+1, (position('@'in email)-1)- position('.'in email))

from customer
GO,

--substing in sql extract partial of text 
-- substring(text, start,length)
select right(email,3)
from customer

--create table customer( last_name varchar(50),first_name nvarchar(50), email nvarchar(50),code int identity(120,1))
--insert into customer (last_name,first_name,email) values ('Smith','Flower',S.Flower@gmail.com)
--insert into customer (last_name,first_name,email) values ('Samouel','Jeffer','SAmouel.Jeffer@gmail.com')
--insert into customer (last_name,first_name,email) values ('Joe','Sara','Joe.Sara@gmail.com')
--insert into customer (last_name,first_name,email) values ('Goni','Smi','Goni.Smi@gmail.com')


SELECT
amount
from payment

where amount> (select avg(amount) from payment)

--create table payment( payment_id int,staff_id int, amount int,payment_data int )


--find payment of customer name is adam
SELECT

payment
from payment
where customer_id=(select customer_id from customer where first_name='ADAM' )

--find payment of customerS with name start with A
SELECT

payment
from payment
where customer_id in (select customer_id from customer where first_name like 'A%' )





