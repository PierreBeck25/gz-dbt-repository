SELECT 
    finance.date_date,
    operational_margin - ads_cost AS ads_margin,
    average_basket,
    operational_margin,
    ads_cost,
    impression AS ads_impression,
    click AS ads_clicks,
    quantity,
    revenue,
    purchase_cost,
    margin,
    shipping_fee,
    log_cost,
    ship_cost
FROM {{ref("finance_days")}} AS finance
LEFT JOIN {{ref("int_campaign_day")}} AS campaign
 ON finance.date_date = campaign.date_date