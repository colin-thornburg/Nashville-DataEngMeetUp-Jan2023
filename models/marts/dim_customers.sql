with
    customers as (select * from {{ ref("stg_customers") }}),

    orders as (select * from {{ ref("stg_orders") }})

select customers.*, min(orders.order_date) as first_order
from customers
join orders using (customer_id)
group by customer_id, first_name, last_name
