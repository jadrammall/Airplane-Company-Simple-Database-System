create database Airline_Company
use Airline_Company

create table Company
(name  varchar(50)  NOT NULL  PRIMARY KEY);

create table Model
(number  varchar(5)  NOT NULL , 
 company_name   varchar(50)  NOT NULL ,
 PRIMARY KEY (number) ,
 FOREIGN KEY (company_name)  REFERENCES  Company(name) );

create table Airplane
(code   varchar(10)  NOT NULL ,
 production_year  char(4) NOT NULL ,
 number_of_seats  int  NOT NULL , 
 model_number  varchar(5) NOT NULL ,
 PRIMARY KEY (code) ,
 FOREIGN KEY (model_number)  REFERENCES  Model(number) ,
 CHECK (production_year < 2022) );

create table Airport 
(code  char(3)  NOT NULL ,
 name  varchar(100)  NOT NULL ,
 country  varchar(60)  NOT NULL ,
 PRIMARY KEY (code) );

create table Flight
(number  varchar(4)  NOT NULL ,
 scheduled_departure_time  time  NOT NULL ,
 scheduled_arrival_time  time  NOT NULL ,
 departure_airport_code  char(3)  NOT NULL ,
 arrival_airport_code  char(3)  NOT NULL ,
 PRIMARY KEY (number) ,
 FOREIGN KEY (departure_airport_code)  REFERENCES  Airport(code) ,
 FOREIGN KEY (arrival_airport_code)  REFERENCES  Airport(code) ,
 UNIQUE (scheduled_departure_time, departure_airport_code , arrival_airport_code) ,
 CHECK (departure_airport_code <> arrival_airport_code) ,
 CHECK (scheduled_departure_time <> scheduled_arrival_time) );

create table Journey 
(ID  int  NOT NULL , 
 actual_departure_time  smalldatetime  NOT NULL ,
 actual_arrival_time  smalldatetime  NOT NULL ,
 number_of_passengers  int  NOT NULL ,
 flight_number  varchar(4)  NOT NULL ,
 airplane_code  varchar(10)  NOT NULL ,
 PRIMARY KEY (ID) ,
 FOREIGN KEY (flight_number)  REFERENCES  Flight(number) ,
 FOREIGN KEY (airplane_code)  REFERENCES  Airplane(code) ,
 
 UNIQUE (actual_departure_time , airplane_code) ,
 CHECK (actual_departure_time < actual_arrival_time) );

create table Seat 
(journey_id  int  NOT NULL ,
 number  int  NOT NULL ,
 passenger_name  varchar(30)  NOT NULL ,
 passenger_nationality  varchar(15)  NOT NULL ,
 passenger_age  int  NOT NULL , 
 passenger_phone_number  int  NOT NULL 
 PRIMARY KEY(journey_id , number) ,
 FOREIGN KEY (journey_id)  REFERENCES  Journey(ID) );


