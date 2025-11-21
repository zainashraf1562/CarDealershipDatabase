
select s.contract_id, s.vin, s.`date`, s.price
from sales_contracts s
join inventory i on s.vin = i.vin
join dealerships d on i.dealership_id = d.dealership_id
where d.dealership_id = 3 and 
s.`date` > "2024-09-15" and s.`date` < "2025-09-15";

