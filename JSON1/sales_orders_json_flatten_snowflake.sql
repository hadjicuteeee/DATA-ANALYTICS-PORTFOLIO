
WITH tbl1 AS (
    SELECT PARSE_JSON('{
      "order_id": "O1001",
      "customer_id": "C001",
      "items": [
        {"product_id": "P01", "qty": 1, "price": 2500},
        {"product_id": "P02", "qty": 2, "price": 300},
        {"product_id": "P03", "qty": 3, "price": 5300}
      ]
    }') AS json_data

    UNION ALL
    SELECT PARSE_JSON('{
      "order_id": "O1002",
      "customer_id": "C002",
      "items": [
        {"product_id": "P02", "qty": 4, "price": 300},
        {"product_id": "P04", "qty": 1, "price": 500}
      ]
    }')

    UNION ALL
    SELECT PARSE_JSON('{
      "order_id": "O1003",
      "customer_id": "C003",
      "items": [
        {"product_id": "P01", "qty": 2, "price": 2500},
        {"product_id": "P05", "qty": 1, "price": 1200},
        {"product_id": "P03", "qty": 5, "price": 150}
      ]
    }')

    UNION ALL
    SELECT PARSE_JSON('{
      "order_id": "O1004",
      "customer_id": "C001",
      "items": [
        {"product_id": "P06", "qty": 2, "price": 800},
        {"product_id": "P02", "qty": 3, "price": 300}
      ]
    }')

    UNION ALL
    SELECT PARSE_JSON('{
      "order_id": "O1005",
      "customer_id": "C004",
      "items": [
        {"product_id": "P04", "qty": 3, "price": 500},
        {"product_id": "P05", "qty": 2, "price": 1200}
      ]
    }')
),

tbl2 AS (
    SELECT PARSE_JSON('{
      "customer_id": "C001",
      "name": "Juan",
      "city": "Manila",
      "signup_date": "2023-06-15"
    }') AS json_name

    UNION ALL
    SELECT PARSE_JSON('{
      "customer_id": "C002",
      "name": "Maria",
      "city": "Cebu",
      "signup_date": "2023-09-10"
    }')

    UNION ALL
    SELECT PARSE_JSON('{
      "customer_id": "C003",
      "name": "Pedro",
      "city": "Davao",
      "signup_date": "2024-01-05"
    }')

    UNION ALL
    SELECT PARSE_JSON('{
      "customer_id": "C004",
      "name": "Ana",
      "city": "Baguio",
      "signup_date": "2024-02-12"
    }')
),

flatten1 as (
    SELECT
    t1.json_data:"order_id"::STRING AS "order_id",
    t1.json_data:"customer_id"::STRING AS "customer_id",
    f.value:"product_id"::STRING AS "product_id",
    f.value:"qty"::INTEGER AS "qty",
    f.value:"price"::NUMBER AS "price",
    t2.json_name:"name"::STRING AS "name",
    t2.json_name:"city"::STRING AS "city",
    t2.json_name:"signup_date"::DATE AS "signup_date"
    FROM tbl1 t1
    JOIN tbl2 t2
    ON t1.json_data:"customer_id"::STRING 
    = t2.json_name:"customer_id"::STRING,
    LATERAL FLATTEN (input => t1.json_data:"items") f
),

city_revenue as (
    SELECT
        "city",
        SUM("price" * "qty") as total_revenue
        from flatten1
        group by "city"
        
),

date_sales as (
    SELECT
        "product_id",
        "signup_date",
        CASE
        WHEN "product_id" = 'P01' THEN 'Monitor'
        WHEN "product_id" = 'P02' THEN 'Mouse Pad'
        WHEN "product_id" = 'P03' THEN 'Keyboard Cleaner'
        WHEN "product_id" = 'P04' THEN 'Lamp Shade'
        WHEN "product_id" = 'P05' THEN 'Keyboard'
            ELSE 'TBD'
            END AS category,
         "price",
         "qty",
        SUM("price" * "qty") OVER (PARTITION BY "signup_date" 
                                    ORDER BY "signup_date"
                                ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
                                    ) AS running_revenue
        from flatten1
),

monthly_sales AS(
    SELECT 
    EXTRACT(year FROM "signup_date") AS year,
    EXTRACT(month FROM "signup_date") AS month_number,
    TO_CHAR("signup_date", 'Mon') AS month_name,
    SUM("price" * "qty") AS monthly_sales,
    SUM(SUM("price" * "qty")) OVER (
        ORDER BY year, month_number
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_monthly_sales
FROM flatten1
GROUP BY year, month_number, month_name
ORDER BY year, month_number
) select * from monthly_sales

