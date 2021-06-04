SELECT
    order_id,
    sum(amount) as total_amount,
FROM {{ref('stg_payments')}}
group by 1
having not(total_amount>=30)