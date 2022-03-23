-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT
    country.country,
    AVG (amount)
FROM 
    address
INNER JOIN
    city
ON
    city.city_id = address.city_id
INNER JOIN
    country
ON
    country.country_id = city.country_id
INNER JOIN 
    customer
ON
    customer.address_id = address.address_id
INNER JOIN
    payment
ON
    payment.customer_id = customer.customer_id
GROUP BY
    country.country
ORDER BY 
    AVG DESC
LIMIT
    10;