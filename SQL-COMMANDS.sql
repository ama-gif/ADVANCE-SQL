use mavenmovies;
-- QUESTION 1 :Identify the primary key and foreign key in mavenmovie db. discuss the differences?
-- A primary key not null and the table allows only one primary key.
-- A primary key generally focous on the uniqness of the table, it assure the value of the specific column is unique.
-- A foreign key  generally used to build to the relationship between the two tables.
-- tables can allow more than one value.
show tables;
desc actor;
-- actor_id is primary key and last_name is foreign key
desc actor_award;
-- actor_award_id is primary key and last_name is foreign key
desc address ;
-- address_id is primary key and city_id is foreign key
desc advisor;
-- advisor_id is primary key and last_name is foreign key
desc category ;
-- category_id is primary key
desc city;
-- city_id is primary key
desc country;
-- countary_id is primary 
desc customer;
-- customer_id is primary key and store_id, last_name,address_id are foreign key
desc film;
-- film_id is primary key and description,language_id,orignal_language_id are foreign key
desc film_actor;
-- actor_id,film_id are prmary key
desc film_category;
-- film id ,category_id are primary key
desc film_text;
-- film_id is primary key and title is foreign key
desc inventory;
-- inventory_id is primary key and film_id,store_id are foreign key
desc investor;
-- investor_id is primary key 
desc language;
-- language_id is primary key
desc payment;
-- payment_idis primary key and customer_id,staff_id,rental_id are foreign key
desc rental;
-- rental_id is primary key and rental_date,inventory_id,customer_id,staff_id are foreign key
desc store;
-- store_id is primary key and address_id is foreign key 


-- Question 2: list all detail of actors
select*from actor;

-- Question 3:list all customer from DB
select*from customer;

-- Question 4:list different countries.
select country from country;

-- Question 5:dispiay all active customer.
select*from customer where active ;

-- Question 6:list of all rental IDs for customer with id 1.
select rental_id, customer_id from rental where customer_id = 1;

-- Question 7:display all the film whose rental duration is greater than 5.
select*from film where rental_duration >5;

-- Question 8: list the total number of films whose replacment_cost is greater than $15and less than $20.
select count(*) as total_film from film where replacement_cost between 15 and 20;

-- Question 9:find the number of films whose rentel rate is less than &1.
select count(*) as no_of_films from film where rental_rate < 1;

-- Question 10:display the count of unique first name of actor.
select count(distinct first_name) as firstname from actor;

-- Question 11:display the first 10 record from the customer table.
select*from customer limit 10;

-- Question 12:display the first 3 record from the customer table whose first name start with 'b'.
select first_name,last_name from customer where last_name like "b%" limit 3;

-- Question 13:display the name of the first  5 movies which are rated as'G'.
select title,rating from film where rating = 'G' limit 5;

-- Question 14:find all the customer whose first_name start with 'a'.
select first_name from customer where first_name like 'a%';

-- Question 15:find  all the customers whose first_name end with 'a';
select first_name from customer where first_name like '%a';

-- Question 16: dispiay the list of first 4 cities which start and end whith 'a'.
select city from city where city like 'a%a' limit 4;

-- Question 17 : Find all customers whose first name have "NI" in any position.
select first_name from customer where first_name like "%NI%";

-- Question 18: Find all customers whose first name have "r" in the second position
select first_name from customer where first_name like "_r%";
-- Question 19: Find all customers whose first name starts with "a" and are at least 5 characters in length.
select first_name from customer where first_name like 'a%' and length(first_name)>=5;

-- Question 20 : Find all customers whose first name starts with "a" and ends with "o".
select first_name from customer where first_name like "a%o";

-- Question 21: Get the films with pg and pg-13 rating using IN operator.
select title,rating from film where rating in ("pg","pg-13");

-- Question 22: Get the films with length between 50 to 100 using between operator.
select title,length from film where length between 50 and 100;

-- Question 23: Get the top 50 actors using limit operator.
select * from actor order by actor_id asc limit 50;

-- Question 24: Get the distinct film ids from inventory table.
select distinct film_id from film;


































































