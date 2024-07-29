select 
orders.order_id,
orders.customer_id,
payments.amount
from {{ ref('stg_orders') }} orders
inner join {{ ref('stg_stripe__payments') }} payments 
on orders.order_id = payments.orderid