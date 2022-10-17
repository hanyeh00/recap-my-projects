select first_name ,'actor' as carier from actor
union
select first_name ,'customer' from customer
union
select first_name ,'staff' from staff

order by 2 desc

