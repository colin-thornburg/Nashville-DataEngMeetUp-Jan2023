with source as (

    select * from {{ source('stripe', 'payment') }}

),

renamed as (

    select
        id as payment_id,
        orderid as order_id,
        paymentmethod,
        status,
        amount,
        created

    from source

)

select * from renamed
