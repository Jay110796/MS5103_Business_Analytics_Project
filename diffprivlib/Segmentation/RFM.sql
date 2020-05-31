select 
customer_unique_id,
max(order_purchase_timestamp) as MaxPurchaseDate,
datediff(day,max(order_purchase_timestamp),'2018-09-03 09:06:57.000')as Recency,
count(order_purchase_timestamp)as Frequency,
sum(payment_value)as Monetary
from cust_segments group by customer_unique_id

-- 2018-09-03 09:06:57.000 is the overall max (order_purchase_timestamp)