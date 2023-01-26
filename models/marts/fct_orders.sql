with orders as (
    Select * from {{ ref('stg_orders') }}
),

payments as (
    Select * from {{ ref('stg_payments') }}
)

Select orders.*, payments.paymentmethod, payments.amount from orders join payments using (order_id)