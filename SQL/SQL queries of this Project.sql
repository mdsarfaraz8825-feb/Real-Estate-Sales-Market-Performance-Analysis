create database real_estate_db;
use real_estate_db;

select * from agents_cleaned;

alter table agents_cleaned
Modify Agent_ID int not null;

alter table agents_cleaned
Add primary key (Agent_ID);

select * from customers_cleaned;

alter table customers_cleaned
modify Customer_ID int not null;

alter table customers_cleaned
add primary key (Customer_ID);

select * from sales_cleaned;

alter table sales_cleaned
modify Sale_ID int not null;

alter table sales_cleaned
add primary key (Sale_ID);

select * from amenities_cleaned;

alter table amenities_cleaned
modify Property_ID int not null;

alter table amenities_cleaned 
add primary key (Property_ID);



