
USE sakila;

-- 1. Drop column picture from staff. --

ALTER TABLE staff DROP picture;

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly. --
SELECT first_name, last_name, address_id, email, active from customer where (first_name = 'TAMMY') and (last_name = 'SANDERS');

INSERT INTO sakila.staff(staff_id, first_name, last_name, address_id, email, store_id, active, username) 
values (3, 'Tammy', 'Sanders', 79, 'TAMMY.SANDERS@sakilacustomer.org',2,1, 'Tammy');

/*-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
You can use current date for the rental_date column in the rental table. 
Hint: Check the columns in the table rental and see what information you would need to add there. 
You can query those pieces of information. For eg., you would notice that you need customer_id information as well. 
To get that you can use the following query: */

INSERT INTO rental(rental_id, rental_date, inventory_id, customer_id, staff_id) 
values (16050, '2023-01-28', '8', 130, 1);

		-- Queryed information : --
SELECT * FROM RENTAL;
SELECT FILM_ID, TITLE FROM FILM WHERE title = 'ACADEMY DINOSAUR';
SELECT inventory_id FROM INVENTORY WHERE film_id = 1;
SELECT customer_id, first_name, last_name FROM CUSTOMER WHERE first_name = 'CHARLOTTE' and last_name = 'HUNTER';
SELECT * FROM STAFF WHERE first_name = 'Mike' and last_name = 'Hillyer';

