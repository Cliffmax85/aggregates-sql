-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT
    city.city,
    SUM (amount)
FROM
    customer
INNER JOIN
    address
ON
    customer.address_id = address.address_id
INNER JOIN
    city
ON
    address.city_id = city.city_id
INNER JOIN
    payment
ON 
    customer.customer_id = payment.customer_id
GROUP BY
    city.city_id
ORDER BY
    SUM DESC
LIMIT
    10;