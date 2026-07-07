select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    created as created_at,
    {{ cents_to_dollars('amount') }} as amount
from {{ source('stripe', 'raw_stripe_payment') }} 

-- version: branch-one