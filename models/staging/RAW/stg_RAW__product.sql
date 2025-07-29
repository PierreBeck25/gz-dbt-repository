with 

source as (

    select * from {{ source('RAW', 'product') }}

),

renamed as (

    select
        products_id,
        CAST(purchse_price AS FLOAT64)purchse_price AS purchase_price,

    from source

)

select * from renamed
