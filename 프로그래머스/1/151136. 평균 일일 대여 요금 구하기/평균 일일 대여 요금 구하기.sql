-- 코드를 입력하세요
SELECT round(avg(daily_fee), 0) AS FEE_AVG
from car_rental_company_car
where car_type = 'SUV';