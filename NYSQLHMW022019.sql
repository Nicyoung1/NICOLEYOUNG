#SQL Homework Nicole Young 
Use sakila;
select * from sakila.actor; 
#1a - Display first and last names of all actors from table actor 
select first_name, last_name from actor; 
#1b - Display the first and last name of each actor in a single column in upper case letters. Name it "Actor Name" 
select concat(first_name, " ", last_name) as "Actor Name" from actor; 

select * from sakila.actor; 
#2a - Find the ID number, first and last name of a specific actor with the first name "Joe" 
select actor_id, first_name, last_name from actor
where first_name = "Joe"; 
#2b - Find all actors whose last name contains the letters "GEN"
select last_name from actor
where last_name like "%GEN%";
#2c Find all actors whose last names cntain the letters LI. Order rows by last name and first name
select last_name from actor
where last_name like "%LI%"
order by last_name, first_name; 
#2d Using IN, display the country_id and country columns of: Afghanistan, Bangladesh, China 
select * from country Where country in ("China", "Afghanistan", "Bangladesh");
#3a Create a column in the table actor named description and use the data type BLOB
alter table actor add(description blob); 
select * from actor; 
#3b Delete the description column
alter table actor
drop column description;
select * from actor;
  
#4a List the names of actors and the counts of each last name
select last_name, count(*) from actor
group by last_name;  
#4b List last names of actors and counts for names which are at least duplicate
select last_name, count(*) from actor
group by last_name having count(*) > 1;   
#4c Change GROUCHO WILLIAMS to HARPO WILLIAMS
update actor set first_name = "HARPO"
where first_name = "GROUCHO";   
 #4d Use one query to change HARPO TO GROUCHO 
update actor set first_name = replace(first_name, "HARPO", "GROUCHO");  
#5a Which query would you use to re-create the schema of the address table?
select * from sakila.address;  
create table address2 (
address_id int
, address varchar(100)
, address2 varchar(100)
, district varchar(50)
, city_id int
, postal_code int
, phone int
, location BLOB
, last_update datetime
); 


#6a Use JOIN to display the first and last names, addresses of each staff member using tables staff and address
Use Sakila; 
select * from staff;
select * from address; 
select s.first_name, s.last_name, a.address, a.address2, a.postal_code, a.phone, a.location, a.last_update
from staff s 
join address a using (address_id);   
#6b Use JOIN to display the total amount run up by each staff member in 08/2005 Use tables staff and payment 
select * from staff; 
select * from payment; 
select s.first_name, s.last_name. sum(p.amount) as total amount from payment p;
join staff s using (staff_id) where date(p.payment_date) between "2005-08-01" and "2005-08-31"
group by p.staff_id; 
#6c List each film and the number of actors who are listed for that film. Use fil_actor and film (Inner Join) 
#6d Count for Hunchback Impossible from inventory system 
select count(*) as "Number_of_Copies" from inventory
where film_id = (select film_id from film where title = "Hunchback Impossible"); 
#6e Using tables payment and customer perform JOIN to list the total paid by each customer. List customers alphabetically by last name
select c.first_name, c.last_name, sum(p.amount) as "Total Paid" from payment p 
join customer c using (customer_id)
group by c.customer_id order by c.last_name;  



#7a subquery movies starting with K and Q with English as the language
select * from film;  
select title from film where title like "K%" or title like "Q%" and language_id = 1; 
#7b subquery actors in Alone Trip
select * from film where title = "Alone Trip";
#Alone Trip film id is 17
select * from film_actor where film_id = 17; 
# actor_ids appearing in film 17 3,12,13,82,100,160,167,187
select * from actor; 
select first_name, last_name from actor where actor_id = 3;
select first_name, last_name from actor where actor_id = 12; 
select first_name, last_name from actor where actor_id = 13; 
select first_name, last_name from actor where actor_id = 82; 
select first_name, last_name from actor where actor_id = 100; 
select first_name, last_name from actor where actor_id = 160;
select first_name, last_name from actor where actor_id = 167;
select first_name, last_name from actor where actor_id = 187;    

#7c Using Joins query all Canadian emaail address customers
select * from customer;
select * from country; 
#7d Query all "family" films 
select * from film; 
select f.title from film f 
join film_category using (film_id)
join category c using (category_id)
where c.name = "Family"
group by f.title; 
#7e Display frequently watched movies in decending order
select * from inventory; 
select * from rental; 
 
#7f Display store revenue in USD for each store 






