

create table customers (
customerID INT primary key,
firstname VARCHAR(255) not null,
lastname VARCHAR(255) not null,
email VARCHAR(255) not null,
phone VARCHAR(50) not null,
address VARCHAR(255) not null,
city VARCHAR (100) not null,
state VARCHAR(100) not null,
zipcode VARCHAR (20) not null
);

drop table customers cascade;


create table categories (
categoryID INT primary key not null,
categoryname VARCHAR(255) not null,
description VARCHAR (255) not null
);

create table products (
productID INT primary key not null,
productname VARCHAR(100) not null, 
description VARCHAR(100) not null,
price DECIMAL(10,2) not null,
stockquantity INT not null,
categoryID INT not null,
foreign key (categoryID) references categories(categoryID)
);
drop table products cascade;
create table orders (
orderID INT primary key not null,
customerID INT not null,
orderdate DATE not null,
totalamount DECIMAL(10,2) not null,
foreign key (customerID) references customers(customerID)
);


create table orderdetails (
orderdetailid INT primary key,
orderid INT not null,
productid INT not null,
quantity INT not null,
uniprice DECIMAL(10,2) not null,
foreign key (orderid) references orders(orderID),
FOREIGN key (productid) references products(productid)
);









