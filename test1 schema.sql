-- Part 1-- 

drop database if exists shopping_management;
create database Shopping_management;
use Shopping_management;

-- Part 2-- 

create table Customers(
	customer_id int primary key auto_increment,
    customer_name varchar(100),
    email varchar(250) Unique,
    phone_number char(10) not null unique,
    age int check(age>0),
    gender enum('Male','Female','Other'),
    country varchar(50) default 'India',
    city varchar(50) not null,
    pincode char(6) default '201301',
    registration_date date default(current_date),
    registration_time time default(current_time),
	created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    address varchar(250),
    customer_status enum('Active','Inactive','Blocked') default 'Active',
    customer_notes varchar(1000)
);


-- Part 3-- 

create table orders(
	order_id int primary key auto_increment,
    customer_id int not null,
    order_date date not null default(current_date),
    order_amount decimal(10,2) not null,
    order_status enum('Pending','Processing','Shipped','Delievered','Cancelled') not null default 'Pending',
    payment_method enum('Cash','Card','UPI','Net Banking'),
    payment_status enum('Pending','Paid','Failed') not null default 'Pending',
    shipping_address varchar(250) not null,
    delivery_pincode char(6),
    quantity INT NOT NULL CHECK (quantity > 0),
    discount_amount decimal(10,2) default 0.00,
    delivery_date date default null,
    created_at datetime not null default current_timestamp,
    tracking_number varchar(30) not null unique,
    delivery_status enum('Not Dispatched','In Transit','Delivered','Returned') default 'Not Dispatched',
    order_notes varchar(1000),
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ;

describe customers;
describe orders;

show create table orders;
