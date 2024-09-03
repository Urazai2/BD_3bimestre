/*1*/
select orders.order_id, orders.order_date, customers.first_name, customers.last_name, customers.email
from customers
inner join orders
on orders.order_id = customers.customer_id;

/*2*/
select products.product_name, Order_Items.quantity
from products
inner join Order_Items
on products.product_id = Order_Items.order_id
inner join orders
on Order_Items.order_id = orders.order_id
where orders.customer_id = 1;

/*3*/
select customers.first_name, customers.last_name, sum(order_items.quantity * products.price)
from customers
inner join orders
on customers.customer_id = orders.customer_id
inner join order_items
on orders.order_id = order_items.order_id
inner join products
on order_items.product_id = products.product_id
GROUP BY 
customers.customer_id, customers.first_name, customers.last_name;

/*4*/
select customers.first_name, customers.last_name
from customers
left join orders
on customers.customer_id = orders.customer_id
where
orders.order_id is null;

/*5*/
select products.product_name, order_items.quantity
from products
join order_items
on products.product_id = order_items.product_id
order by order_items.quantity desc;