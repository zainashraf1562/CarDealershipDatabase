select d.dealership_id, d.name, d.address , d.phone
from dealerships d
join inventory i on i.dealership_id = d.dealership_id
join vehicles v on i.vin = v.vin
where v.vin = "5YJ3E1EA7KF317321"