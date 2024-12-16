{{
    config(
        materialized='table'
    )
}}

WITH customers AS (
    select
        customer_id,
        valid_from,
        raw_data,
        source_filename,
        loaded_at
    from {{ ref('vw_customers') }}
)

select *
from customers