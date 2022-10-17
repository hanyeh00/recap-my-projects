--select first name customer where spent more than 30 dollors 

select first_name,email from customer
where customer_id in (select customer_id from payment
					  group by customer_id
                      having sum(amount)>30)
