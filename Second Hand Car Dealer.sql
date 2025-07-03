create database cars;
use cars;
-- Read  Data --
select * from car_dekho;
-- Total car : count the car --
select count(*) from car_dekho;

-- The manager asked employee that how many car will be available car in 2025 ? --
select count(*) from car_dekho where year = 2023;

-- The manager asked the  employee that how many car will be available car in 2020, 2022, 2023 ? --
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2022; #6
select count(*) from car_dekho where year = 2023; #7

-- if we want to see total  car in the year 2015 , 2016, 2017, 2018--
select count(*) from car_dekho where year in(2015, 2016, 2017, 2018) group by year;

-- manager asked me to print all the cars by year, I don't want to see all the details  --
select year, count(*) from car_dekho group by year;

-- client  asked to the dealer agent how many  diesel cars in 2020--
select count(*) from car_dekho where fuel = "Diesel" and year = 2020;  #20

-- client request to a car dealer how many petrol car in 2016 --
select count(*) from car_dekho where fuel ="petrol" and year = 2016; #429
select count(*) from car_dekho where fuel ="cng" and year = 2015; #2

-- The manager ask to employee give a print all the fuel cars(petrol, deisel and cng) come by all year --
select year , count(*) from car_dekho where fuel = "petrol" group by year;
select year , count(*) from car_dekho where fuel = "Deisel" group by year;
select year , count(*) from car_dekho where fuel = "CNG" group by year;

-- Manager said there were more than 100 cars ina given year, which year had more than  100 cars --
select year, count(*) from car_dekho group by year having count(*)>100;
select year, count(*) from car_dekho group by year having count(*)<50;

--  the manager said to employee all cars count details between 2015 and 2023 ; we need a complete list --
select count(*) from car_dekho where year  between 2015 and 2023;

-- the manager said to the employee all cars details between 2015 to 2020 we need complete list--
select * from car_dekho where year between 2015 and 2020;

-- if client asked to the dealer show me car above  selling price  5000000  --
select * from car_dekho where selling_price >=5000000;
select * from car_dekho where selling_price <=500000;

-- if we count the car of above 6000000 selling_price --
select count(*) from car_dekho where selling_price >= 6000000; 
select count(*) from car_dekho where selling_price <= 700000; 

-- Top 5  most  eExpensive car 
select Name, Selling_price
from car_dekho
order by Selling_price desc
limit 5;

