select
    order_id,
    customer_id,
    order_status,
    DATE(order_date) as order_created_at,
    DATE(required_date) as order_required_at,
    DATE(shipped_date) as order_shipped_at,
    store_id,
    staff_id

from {{ source("localbike", "orders") }}
