                                       -- Analysis --		
                                       
									
-- Popular Category by age , gender , location

SELECT *
FROM (
    SELECT "Age", gender, location, category,
           SUM(purchase_amount) AS Total_Purchases,
           RANK() OVER (PARTITION BY "Age", gender, location ORDER BY SUM(purchase_amount) DESC) AS rnk
    FROM customer
    GROUP BY "Age", gender, location, category
) t
WHERE rnk = 1;




-- Trend of purchases by season , size , Color-- 

SELECT season,
       SUM(purchase_amount) AS Total_sales,
       AVG(purchase_amount) AS Avg_sales
FROM customer
GROUP BY season;

SELECT color,
       SUM(purchase_amount) AS Total_sales,
       AVG(purchase_amount) AS Avg_sales
FROM customer
GROUP BY color;

SELECT size,
       SUM(purchase_amount) AS Total_sales,
       AVG(purchase_amount) AS Avg_sales
FROM customer
GROUP BY size;



-- Top customer based on purchase_amount , repeat purchases

select customer_id , purchase_amount  , previous_purchases from customer order by previous_purchases desc limit 5;
select customer_id , purchase_amount  , previous_purchases from customer order by purchase_amount desc limit 5;





-- Most preferred payment method and shipping type

select payment_method , count(*) As Top_payment_method from customer group by payment_method order by Top_payment_method desc limit 1;
select shipping_type , count(*) As Top_shipping_Type from customer group by  shipping_type order by Top_shipping_Type desc limit 1;






-- effect of subscription status on customer purchases


SELECT
    -- Total Purchases
    SUM(CASE WHEN subscription_status = 'true' THEN purchase_amount ELSE 0 END) AS Total_Purchases_true,
    SUM(CASE WHEN subscription_status = 'false' THEN purchase_amount ELSE 0 END) AS Total_Purchases_false,
    SUM(CASE WHEN subscription_status = 'true' THEN purchase_amount ELSE 0 END) -
    SUM(CASE WHEN subscription_status = 'false' THEN purchase_amount ELSE 0 END) AS Total_Effect,

    -- Average Purchases per customer
    AVG(CASE WHEN subscription_status = 'true' THEN purchase_amount END) AS Avg_Purchase_True,
    AVG(CASE WHEN subscription_status = 'false' THEN purchase_amount END) AS Avg_Purchase_false,
    AVG(CASE WHEN subscription_status = 'true' THEN purchase_amount END) -
    AVG(CASE WHEN subscription_status = 'false' THEN purchase_amount END) AS Avg_Effect

FROM Customer;
