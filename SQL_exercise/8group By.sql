-- ## find duplicate emails in table:
create table Person
(id int primary key identity(1,1),
  email varchar(50))
  Go
  insert into Person(email)
                values ('a@b.com')
  insert into Person(email)
                values ('c@d.com')
   insert into Person(email)
                values ('a@b.com')
  Go

--show email duplicate
select email, count(email) as num 
from Person
group by email
