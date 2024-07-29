select id as payment_id,
ORDERID,
amount
from 
{{ source('stripe', 'payment') }}