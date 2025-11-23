select d.dealership_id, d.name, d.address , d.phone
FROM dealerships d
join inventory i on d.dealership_id = i.dealership_id
join vehicles v on i.vin = v.vin
where make = "ford" and model = "mustang" and color = "red"