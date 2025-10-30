select staff_id, concat(staff_first_name, '-', staff_last_name) as staff_name
from {{ ref("stg_localbike__staffs") }}
