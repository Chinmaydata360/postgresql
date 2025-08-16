--data cleaning and eda

select * from category;
select * from customers;
select * from inventory;
select * from order_items;
select * from orders;
select * from payments;
select * from products;
select * from sellers;
select * from shippings;

select distinct(delivery_status) from shippings;

select * from shippings 
where
return_date is not null;

-- 6747
select * from orders;

select * from orders
where
order_id=6747;

select * from payments;
select * from payments
where order_id=6747;



--






