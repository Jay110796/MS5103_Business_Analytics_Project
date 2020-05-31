select 
olist_order_payments_dataset.order_id,	
olist_order_payments_dataset.payment_sequential,	
olist_order_payments_dataset.payment_type,	
olist_order_payments_dataset.payment_installments,	
olist_order_payments_dataset.payment_value,		
olist_order_items_dataset.order_item_id,	
olist_order_items_dataset.product_id,	
olist_order_items_dataset.seller_id,	
olist_order_items_dataset.shipping_limit_date,
olist_order_items_dataset.price,	
olist_order_items_dataset.freight_value,	
olist_orders_dataset.customer_id,	
olist_orders_dataset.order_status,	
olist_orders_dataset.order_purchase_timestamp,	
olist_orders_dataset.order_approved_at,	
olist_orders_dataset.order_delivered_carrier_date,	
olist_orders_dataset.order_delivered_customer_date,	
olist_orders_dataset.order_estimated_delivery_date,
olist_customers_dataset.customer_unique_id,
olist_customers_dataset.customer_zip_code_prefix,	
olist_customers_dataset.customer_city,	
olist_customers_dataset.customer_state
into cust_segments
from olist_order_payments_dataset 
inner join olist_order_items_dataset on 
olist_order_payments_dataset.order_id=olist_order_items_dataset.order_id
inner join olist_orders_dataset on 
olist_orders_dataset.order_id=olist_order_payments_dataset.order_id
inner join olist_customers_dataset 
on olist_customers_dataset.customer_id=olist_orders_dataset.customer_id
