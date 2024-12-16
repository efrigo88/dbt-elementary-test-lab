WITH vw_customers AS (
    select
        CAST(customer_id AS INT) AS customer_id,
        CAST(TO_TIMESTAMP(valid_from) AS DATE) AS valid_from,
        data::jsonb AS raw_data,
        CAST(source_filename AS VARCHAR) AS source_filename,
        CAST(loaded_at AS TIMESTAMP) AS loaded_at
    from {{ ref('customers_raw') }}
)

select *
from vw_customers
