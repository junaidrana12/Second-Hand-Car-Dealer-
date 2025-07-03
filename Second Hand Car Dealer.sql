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
