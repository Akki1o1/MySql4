select * from orders where customer_id = any
(select customer_id from customers where customer_id > 1);
select * from orders where customer_id = any
(select customer_id from customers where customer_id > 5);
select * from customers where Last_name like 'b%'
select * from customers where first_name like '%a'
select * from customers where Last_name like '%b%'
select * from customers where last_name like '_____y'
Select order_id, order_date, Status, o.customer_id, first_name, city from
orders o join customers c on o.customer_id = c.customer_id
Select order_id, order_date, Status, o.customer_id, first_name, city from
orders o inner join customers c on o.customer_id = c.customer_id
select * from
orders o inner join customers c on o.customer_id = c.customer_id
select c.customer_id from  customers c inner join
 orders o on o.customer_id = c.customer_id
 
 select status, o.order_id, first_name, o.customer_id, city quantity, address, pr.product_id from
 customers c join orders o on o.customer_id = c.customer_id join
  order_items oi on o.order_id = oi.order_id  join
 products pr on oi.product_id =pr.product_id
 
 select p.product_id, oin.order_id from products p inner join order_item_notes oin
 on p.product_id = oin.product_id where name = 'foam dinner plate'
 
select p.product_id, oin.order_id from products p inner join order_item_notes oin
on p.product_id = oin.product_id where name = 'Pork - Bacon,back Peameal' group by product_id

select p.product_id, p.name, o.order_id, c.first_name, c.city from orders o join
customers c on c.customer_id = o.customer_id join
order_item_notes oit on o.order_id = oit.order_id join
products p on p.product_id =oit.product_id
where c.city in ('chicago', 'atlanta', 'waltham')

select p.product_id, p.name, o.order_id, c.first_name, c.city from orders o join
customers c on c.customer_id = o.customer_id join
order_items oi on o.order_id = oi.order_id join
products p on p.product_id =oi.product_id
where c.city in ('chicago', 'atlanta', 'waltham')

select p.product_id,p.name as product_name,o.order_id,c.first_name as customer_name,c.city from customers c
left join orders o on c.customer_id=o.customer_id
left join order_items oi on o.order_id=oi.order_id
left join products p on p.product_id=oi.product_id
where c.city in ('waltham','Arlington','sarasota')
 
select p.product_id,p.name as product_name,o.order_id,c.first_name as customer_name,c.city from customers c
right join orders o on c.customer_id=o.customer_id
right join order_items oi on o.order_id=oi.order_id
right join products p on p.product_id=oi.product_id
where c.city in ('Hampton','Arlington','sarasota')

select * from order_items cross join customers