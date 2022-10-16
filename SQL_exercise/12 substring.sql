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
