{{
  config(
    materialized='table'
  )
}}

SELECT DISTINCT customer_id, customer_name
FROM {{ ref('stg_customers') }}
