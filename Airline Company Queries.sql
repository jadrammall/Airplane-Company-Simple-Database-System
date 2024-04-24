--1-List the company name of all available airplanes.
select distinct company_name
from airplane,model
where model_number = number

--2-List the total number of airports in each country.
select count(code) as number_of_airports,country
from Airport
group by country

--3-List flight number, departing airport name, arrival airport name, scheduled departure time, scheduled arrival time of all the flights that has ‘Western United States’ as their destination country.
select number,D.name as departure_airport_name, A.name as arrival_airport_name, scheduled_departure_time, scheduled_arrival_time
from Flight , Airport D ,Airport A
where departure_airport_code = D.code and arrival_airport_code = A.code and A.country = 'Western United States'

--4-List flight number, journey date, departing airport, actual departure time, arrival airport, actual arrival time of all flights that are done on airbus airplanes (company name = ‘airbus’) on ’2022-10-15 19:20:00’
select Flight.number,actual_arrival_time,D.name,actual_departure_time,A.name,actual_arrival_time
from Airport D,Airport A,Flight,Journey,Airplane,Model
where D.code = departure_airport_code and A.code = arrival_airport_code and Flight.number = flight_number and airplane_code = Airplane.code and model_number = Model.number and company_name = 'Airbus' and actual_arrival_time = '2022-10-15 19:20:00'
