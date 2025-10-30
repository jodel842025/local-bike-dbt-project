select
    oi.order_created_at,
    p.product_name,
    p.category_name,
    p.brand_name,
    c.customer_city,
    c.customer_state,
    s.store_name,
    s.store_state,
    st.staff_name,
    count(distinct oi.order_id) as total_orders,
    sum(oi.quantity) total_sales_quantity,
    round(sum(oi.total_order_item_amount),2) total_sales_amount

from {{ ref("int_localbike__order_item") }} oi
left join {{ ref("int_localbike__product_dim") }} p on oi.product_id = p.product_id
left join {{ ref("int_localbike__customer_dim") }} c on oi.customer_id = c.customer_id
left join {{ ref("int_localbike__store_dim") }} s on oi.store_id = s.store_id
left join {{ ref("int_localbike__staff_dim") }} st on oi.staff_id = st.staff_id

group by
    order_created_at,
    product_name,
    category_name,
    brand_name,
    customer_city,
    customer_state,
    store_name,
    store_state,
    staff_name
