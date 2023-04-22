{{ config(materialized='table') }}

select * from {{ ref('output_customers') }}