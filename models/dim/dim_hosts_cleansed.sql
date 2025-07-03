{{
    config(
        materialized = 'view'
    )
}}
WITH src_hosts AS (
  SELECT
    *
  FROM
    {{ ref('src_hosts') }}
)
SELECT
NVL(
        host_name,
        'Anonymous'
    ) AS host_name
FROM src_hosts
-------------------
/**/