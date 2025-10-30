select customer_id, customer_city, customer_state
from {{ ref('stg_localbike__customers') }}