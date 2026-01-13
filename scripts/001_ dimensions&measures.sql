-- Retrieve a list of unique categories of products
SELECT DISTINCT
    category            -- Dimension (Make no sense to aggregate)
FROM gold.dim_products

-- Retrieve a list of unique sales amount
SELECT DISTINCT
    sales_amount        -- Measure (Make sense to aggregate)
FROM gold.fact_sales

-- Retrieve a list of unique product names
SELECT DISTINCT
    product_name        -- Dimension (Make no sense to aggregate)
FROM gold.dim_products

-- Retrieve a list of unique quantity of sales
SELECT DISTINCT
    quantity            -- Measure (Make sense to aggregate)
FROM gold.fact_sales

-- 'birthdate' is Dimension (Make no sense to aggregate)
-- But when you calculate the age from the 'birthdate' it's Measure
SELECT DISTINCT
    AVG(DATEDIFF(year, birthdate, GETDATE())) AS Avg_Age -- Measure (Make sense to aggregate)
FROM gold.dim_customers

-- Retrieve a list of unique customer id's
SELECT DISTINCT
    customer_id         -- Dimension (Make no sense to aggregate)
FROM gold.dim_customers