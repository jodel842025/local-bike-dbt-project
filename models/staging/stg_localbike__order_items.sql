select
    concat(order_id, '_', item_id) as order_item_id,
    order_id,
    item_id,
    product_id,
    quantity,
    list_price,
    discount,
    (list_price * quantity) * (1 - discount) as total_order_item_amount
from {{ source("localbike", "order_items") }}
