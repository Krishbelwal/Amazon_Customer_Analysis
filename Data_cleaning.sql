-- checking for duplicates  
select customer_id , count(*) As Duplicate from Customer group by 
	Customer_id,
	age , 
	gender , 
	item_purchased ,
	category , 
	location , 
	purchase_amount ,
	size  ,  
	color  ,
	season , 
	review_rating ,
	subscription_status ,
	shipping_type , 
	discount_applied ,
	previous_purchases , 
	payment_method ,  
	frequency_of_purchases having count(*) > 1;


-- checking for null values 
select * from Customer where
	Customer_id is null
	or age is null
	or gender is null
	or item_purchased is null
	or category is null
	or purchase_amount is null
	or location  is null
	or purchase_amount is null
	or size  is null
	or color is null
	or season is null
	or review_rating is null
	or subscription_status is null
	or shipping_type is null
	or discount_applied is null
	or previous_purchases is null
	or payment_method is null 
	or frequency_of_purchases is null;


-- checking invalid data
select customer_id , purchase_amount from Customer where purchase_amount < 0 
or Review_rating < 0 ;


