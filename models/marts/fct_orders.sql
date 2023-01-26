with
    orders as (select * from {{ ref("stg_orders") }}),

    payments as (select * from {{ ref("stg_payments") }})

select orders.*, payments.paymentmethod, payments.amount
from orders
join payments using (order_id)
