use classicmodels;

create view costomer_views as
select customerNumber, customerName, phone
from customers;

select * from costomer_views;

create or replace view costomer_views as
select customerNumber, customerName, contactFirstName, contactLastName, phone
from customers
where city = 'Nantes';
select * from costomer_views;


drop view costomer_views; 