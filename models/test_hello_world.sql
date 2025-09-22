{{ config(materialized='view') }}

select 
    {{ hello_world() }} as default_greeting,
    {{ hello_world('dbt User') }} as personalized_greeting