
insert into Company
values ('Fokker') ,
       ('Airbus') ,
	   ('Embraer') ;

insert into Model 
values ('50','Fokker') ,
       ('70','Fokker') ,
	   ('190','Embraer') ,
	   ('100','Embraer') ,
	   ('A300','AirBus') ,
	   ('A310','AirBus') ,
	   ('A319','AirBus');

insert into Airplane
values ('100','1966',200,'50') ,
       ('101','1980',300,'70') ,
	   ('102','2010',250,'190') ,
	   ('103','1990',180,'A300') ,
	   ('104','2017',400,'A310') ;

insert into Airport
values ('BEY','Beirut International Airport','Lebanon') ,
       ('CAI','Cairo International Airport','Egypt') ,
	   ('FCO','Leonardo da Vinci International Airport','Italy') ,
	   ('MAN','Manchester Airport','England') ,
	   ('DIA','Denver International Airport','Western United States') ;
 
insert into Flight
values ('10','09:00:00','15:00:00','BEY','DIA') ,
       ('11','13:15:00','19:40:00','MAN','DIA') ,
	   ('12','08:30:00','14:30:00','CAI','FCO') ,
	   ('13','14:40:00','19:20:00','FCO','CAI') ,
	   ('14','06:00:00','10:45:00','CAI','BEY') ;

insert into Journey
values ('1000','2022-10-11 09:00:00','2022-10-11 15:00:00',150,'10','100') ,
       ('1001','2022-10-12 13:15:00','2022-10-12 19:40:00',269,'11','101') , 
	   ('1002','2022-10-15 09:00:00','2022-10-15 15:00:00',250,'12','102') ,
	   ('1003','2022-10-15 14:40:00','2022-10-15 19:20:00',95,'13','103') ,
	   ('1004','2022-10-16 6:15:00','2022-10-16 11:00:00',313,'14','104') ;

insert into Seat
values ('1000',1,'Rony Smith','American',20,'1579456367') ,
       ('1001',7,'Ahmad Saeed','Egyptian',37,'564612315') ,
	   ('1002',25,'Jad Rammal','Lebanese',24,'71291145') ,
       ('1003',20,'Hadi Saad','Lebanese',40,'03481954') ,
	   ('1004',112,'Hasan Shehata','Egyptian',25,'35453213') ;