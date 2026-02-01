                                                -- Creating views 
												 
                                  -- Popular Category by age , gender , location
								  
create view vw_popular_category AS SELECT *
FROM (
    SELECT "Age", gender, location, category,
           SUM(purchase_amount) AS Total_Purchases,
           RANK() OVER (PARTITION BY "Age", gender, location ORDER BY SUM(purchase_amount) DESC) AS rnk
    FROM customer
    GROUP BY "Age", gender, location, category
) t
WHERE rnk = 1;			



				 -- Trend of purchases by season , size , Color-- 
drop view vw_Trend_of_purchases;			 
create view vw_Trend_of_season As SELECT season,
       SUM(purchase_amount) AS Total_sales,
       AVG(purchase_amount) AS Avg_sales
FROM customer
GROUP BY season;


create view vw_Trend_of_color AS SELECT color,
       SUM(purchase_amount) AS Total_sales,
       AVG(purchase_amount) AS Avg_sales
FROM customer
GROUP BY color;

create view vw_Trend_of_size As SELECT size,
       SUM(purchase_amount) AS Total_sales,
       AVG(purchase_amount) AS Avg_sales
FROM customer
GROUP BY size;




                         -- Top customer based on purchase_amount , repeat purchases
drop view vw_top_customer;
create view vw_Top_customer_based_previous As select customer_id , purchase_amount  , previous_purchases from customer order by previous_purchases desc;
create view vw_Top_customer_based_purchase As select customer_id , purchase_amount  , previous_purchases from customer order by purchase_amount desc;




                               
                              -- Most preferred payment method
create view Top_payment_method AS select payment_method , count(*) As Top_payment_method from customer group by payment_method order by Top_payment_method desc;



                               -- Most preferred shipping
create view Top_shipping_type AS select shipping_type , count(*) As Top_shipping_Type from customer group by  shipping_type order by Top_shipping_Type desc;


                                -- effect of subscription status on customer purchases
create view vw_subscription_purchase As SELECT subscription_status , sum(purchase_amount) AS Total_purchase , Avg(purchase_amount) as Avg_purchase from customer group by subscription_status;

