select
    o.order_id,
    o.customer_id,
    o.order_created_at,
    o.store_id,
    o.staff_id,
    oi.product_id,
    oi.quantity,
    oi.total_order_item_amount

from {{ ref("stg_localbike__orders") }} as o
inner join {{ ref("stg_localbike__order_items") }} as oi on o.order_id = oi.order_id
