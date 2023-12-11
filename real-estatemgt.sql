create table class.propertytype(
id int primary key auto_increment,
type varchar(20),
description varchar(20)
);



create table class.property(
id int primary key  auto_increment,
propertyid int,
name varchar(20),
dimensions varchar(20),
constraint foreign key property_propertytype_propertyid(propertyid) references class.property(id)
);



create table class.address(
id int primary key auto_increment,
street varchar(20),
landmark varchar(20),
state varchar(20),
country varchar(20),
pincode int
);

create table class.addressmapping(
id int primary key auto_increment,
propertyid int,
addressid int,
constraint foreign key addressmaping_address_propertyid(propertyid) references class.property(id),
constraint foreign key addressmaping_address_addressid(addressid) references class.address(id)
); 

insert into class.propertytype(type,description)values('hostel','its good');
insert into class.propertytype(type,description)values('apartment','its good');
insert into class.propertytype(type,description)values('apartment','its good');

select* from class.propertytype;

delete from class.propertytype where id = 3;


insert into class.property(propertyid,name,dimensions)values(1,'msr','250 inches');

insert into class.property(propertyid,name,dimensions)values(2,'ss','150 inches');
insert into class.property(propertyid,name,dimensions)values(3,'ss','150 inches');

select * from class.property;

insert into class.address(street,landmark,state,country,pincode)values('kbhb','spicyexpress','telangana','india',500000);
insert into class.address(street,landmark,state,country,pincode)values('ss','srisai','telangana','india',500000);
insert into class.address(street,landmark,state,country,pincode)values('ss','spicyexpress','telangana','india',500000);

select * from class.address;

insert into class.addressmapping(propertyid,addressid)values(1,3);
insert into class.addressmapping(propertyid,addressid)values(2,2);
insert into class.addressmapping(propertyid,addressid)values(3,2);

select * from class.addresmaping;


select* from class.propertytype as prt
inner join class.property as pt on prt.id=pt.propertyid;

select * from class.propertytype as prt
inner join class.addressmapping as adm on prt.id=adm.propertyid;

select*from class.propertytype as prt
inner join class.addressmapping as adm on prt.id=adm.addressid;

call save_propertytype(5,'villa','description');

select* from propertytype;

select* from propertytype where id=1;

update propertytype set type='Apartment' where id =1;

delete from propertytype where id=1;

select*from propertytype order by type desc;

select*from propertytype order by type asc;


call save_property(4,'aruna','200inches');

select*from property;

select*from property where id=2;

update property set name='akkhi'where id=1;

delete from property where name='apartment';


select*from property order by dimensions desc;

call save_address(4,'srnagar','forummall','telangana','india',500000);

select*from address;

select*from address where id=3;

update address set street='arrgadda' where id=1;

delete from address where street='srnagar';

select*from address order by landmark desc;

select*from address order by street asc;



call save_addressmapping(3, 2, 2);


update addressmapping set addressid=2;

select*from addressmapping;

select*from addressmapping where id=1;

delete from addressmapping where propertyid=1;

select *from addressmapping order by propertyid desc;
select*from addressmapping order by addressid asc;


