create database QuanLyBanHang;

use QuanLyBanHang;

create table Customer(
	cId varchar(29) primary key,
    cName varchar(200),
    cAge int(5)
);

create table orderr(
	oId int AUTO_INCREMENT primary key,
    cId varchar(29),
    oDate date,
    oTotalPrice decimal(10,2),
    foreign key (cId) references customer(cId)
);
alter  table orderr 
modify column oId int not null;

alter table orderr 
modify oId int not null auto_increment;

alter table oederdetail drop foreign key oederdetail_ibfk_1;

alter table oederdetail
add constraint oederdetail_ibfk_1 
foreign key (oId) references orderr(oId);

create table product(
	pId int primary key,
    pName varchar(50),
    pPrice decimal(10,2)
);
alter table product
modify column pId int not null;

alter table oederdetail
drop foreign key oederdetail_ibfk_2;

alter table product
modify pId int not null auto_increment;

alter table oederdetail
add constraint oederdetail_ibfk_2
foreign key (pId) references product(pId);


create table oederdetail(
	oId int,
    pId int,
    odQTY int,
    primary key (oId, pId),
    foreign key (oId) references orderr(oId),
    foreign key (pId) references product(pId)
);

select * from customer;

insert into Customer
values ('1', 'Minh Quan', '10');
insert into Customer 
values ('2', 'Ngoc Oanh', '20');
insert into Customer
values ('3', 'Hong Ha', '50');

delete from orderr
where oId > 0;

ALTER TABLE orderr AUTO_INCREMENT = 1;

insert into orderr(cId, oDate)
values ('1', '2006-3-21');
insert into orderr(cId, oDate)
values ('2', '2006-3-23');
insert into orderr(cId, oDate)
values ('1', '2006-3-16');

insert into product(pName, pPrice)
values ('May giat', 3);
insert into product(pName, pPrice)
values ('Tu lanh', 5);
insert into product(pName, pPrice)
values ('Dieu hoa', 7);
insert into product(pName, pPrice)
values ('Quat', 1);
insert into product(pName, pPrice)
values ('Bep dien', 2);

INSERT INTO oederdetail (oId, pId, odQTY) VALUES
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(1, 2, 1),
(2, 1, 8),
(2, 5, 4),
(2, 3, 3);
