{{
  config(
    materialized='table'
  )
}}

SELECT customer_id
  , raw_data->>'customer_name' AS customer_name
  , raw_data->>'tax_id' AS tax_id
  , raw_data->>'state' AS state
  , raw_data->>'city' AS city
  , raw_data->>'loyalty_segment' AS loyalty_segment
FROM {{ ref('customers') }}