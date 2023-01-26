with source as (

    select * from {{ source('jaffle_shop', 'customers') }}

),

renamed as (

    select
        id as customer_id,
        first_name as firstname,
        last_name as lastname

    from source

)

select * from renamed