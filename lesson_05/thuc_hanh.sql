select * from classicmodels.customers where customerName = 'land of Toys Inc.';

explain select * from classicmodels.customers where customerName = 'land of Toys Inc.';

alter table classicmodels.customers add index idx_customerName(customerName);
explain select * from classicmodels.customers where customerName = 'land of Toys Inc.';

alter table classicmodels.customers add index idx_full_name(contactFirstName,contactLastName);
explain select * from classicmodels.customers where contactFirstName = 'Jean' or contactLastName = 'King';

alter table classicmodels.customers drop index idx_full_name;

use classicmodels;
delimiter //
create procedure findAllCustomers()
begin
select * from customers;
end //
delimiter ;

call findAllCustomers();

delimiter //
drop procedure if exists `findAllCustomers` //
create procedure findAllCustomers()
begin 
select * from customers where customerNumber = 175; 
end //

//tham so In
delimiter //
create procedure getCusById(in cusNum int(11))
begin
select * from customers where customerNumber = cusNum;
end //
delimiter ;

call getCusById(175);

//tham so out
delimiter //
create procedure GetCustomersCountByCity(
	in in_city varchar(50),
    out total int
)
begin 
	select count(customerName)
    into total
    from customers
    where city = in_city;
end
delimiter //

call GetCustomersCountByCity('lyon', @total);
select @total;

//tham so inout
delimiter //
create procedure SetCounter(
	inout counter int,
    in inc int
)
begin
	set counter = counter + inc;
end //
delimiter ;

set @counter = 1;
call SetCounter(@counter, 1);
call SetCounter(@counter, 2);
call SetCounter(@counter, 5);

select @counter;



