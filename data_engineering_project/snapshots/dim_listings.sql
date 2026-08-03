{% snapshot dim_listings %}

{{
    config(
        target_database='AIRBNB',
        target_schema='gold',
        unique_key='LISTING_ID',
        strategy='timestamp',
        updated_at='CREATED_AT',
        dbt_valid_to_current="to_date('9999-12-31')"
    )
}}

SELECT *
FROM {{ ref('silver_listings') }}

{% endsnapshot %}