SELECT
     o.orders_id
     ,o.date_date
     ,o.margin + s.shipping_fee - (s.logcost + s.ship_cost) AS operational_margin
     ,o.quantity
     ,o.revenue
     ,o.purchase_cost
     ,o.margin
     ,s.shipping_fee
     ,s.logcost
     ,s.ship_cost
 FROM {{ref("int_orders_margin")}} o
 LEFT JOIN {{ref("stg_RAW__ship")}} s
     USING(orders_id)
 ORDER BY orders_id desc