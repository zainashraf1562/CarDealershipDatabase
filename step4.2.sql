Select * 
From dealerships d
join inventory i on d.dealership_id = i.dealership_id
join vehicles v on i.vin = v.vin
where d.dealership_id = "1";