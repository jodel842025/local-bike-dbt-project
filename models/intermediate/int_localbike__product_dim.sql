select pr.product_id, pr.product_name, ct.category_name, br.brand_name
from {{ ref("stg_localbike__products") }} pr
left join {{ ref("stg_localbike__categories") }} ct on pr.category_id = ct.category_id
left join {{ ref("stg_localbike__brands") }} br on pr.brand_id = br.brand_id
