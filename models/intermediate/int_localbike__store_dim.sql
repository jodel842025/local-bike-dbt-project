select store_id, store_name, store_state
from {{ ref('stg_localbike__stores') }} 