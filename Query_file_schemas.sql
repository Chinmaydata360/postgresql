-- Amazon project -Advance SQL

-- category table parent table

create table category
(
category_id int primary key,
category_name varchar(20)
);

--Customer tables parent table

create table customers
(
customer_id int primary key,
first_name varchar(20),
last_name varchar(20),
state varchar(20),
address varchar(5) default ('xxxxx')
);


-- sellers table parent table
create table sellers
(
seller_id int primary key,
seller_name varchar(25),
origin varchar(25)
);

-- product table

create table products
(
product_id int primary key,
product_name varchar(50),
price  float,
cogs   float,
category_id int,
constraint product_fk_category foreign key(category_id) references category(category_id)
);

-- order table


create table orders
(
order_id int primary key,
order_date date,
customer_id int, 
seller_id int,
order_status varchar(20),
constraint orders_fk_customers foreign key (customer_id) references customers(customer_id),
constraint orders_fk_sellers foreign key (seller_id) references sellers(seller_id)
);




--  order_items

create table order_items
(
order_item_id int primary key,
order_id int,
product_id int,
quantity int,
price_per_unit float,
constraint order_items_fk_orders foreign key (order_id) references orders(order_id),
constraint order_items_fk_products foreign key (product_id) references products(product_id)
);


--payment table


create table payments
(
payment_id int primary key,
order_id int,
payment_date date,
payment_status varchar(20),
constraint payments_fk_orders foreign key (order_id) references orders(order_id)
);

create table shippings
(
shipping_id int primary key,
order_id int,
shipping_date date,
return_date date,
shipping_providers varchar(20),
delivery_status varchar(20),
constraint shippings_fk_orders foreign key (order_id) references orders(order_id)
);

-- inventory table

create table inventory
(
inventory_id int primary key,
product_id int,
stock int,
warehouse_id int,
last_stock_date date,
constraint inventory_fk_products  foreign key (product_id) references products(product_id)
);

select * from category;
select * from customers;
select * from sellers;
select * from products;
select * from orders;
select * from order_items;
select * from payments;
select * from inventory;

--end of  schemas





