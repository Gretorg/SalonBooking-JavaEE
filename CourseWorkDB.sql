drop database salon;
create database salon;
use salon;

create table Time_schedule(
	time_id int auto_increment,
	time_of_schedule varchar(10),
	primary key(time_id)
)ENGINE=InnoDB;

create table Gender(
	gender_id int auto_increment,
	gender varchar(10),
	primary key(gender_id)
)ENGINE=InnoDB;

create table Master_speciality(
	speciality_id int auto_increment,
	speciality varchar(20),
	primary key(speciality_id)
)ENGINE=InnoDB;

create table Master(
	master_id int auto_increment,
	master_name varchar(20),
	master_surname varchar(20),
	speciality_id int,
	FOREIGN KEY (speciality_id) REFERENCES Master_speciality(speciality_id) ON DELETE CASCADE,
	primary key(master_id)
)ENGINE=InnoDB;

create table Reserve_status(
	reserve_id int auto_increment,
	reserve_status varchar(10),
	primary key(reserve_id)
)ENGINE=InnoDB;

create table Client(
	client_id int auto_increment,
	client_name varchar(30),
	client_surname varchar(30),
	client_ph_number varchar(20),
	primary key(client_id)
)ENGINE=InnoDB;

create table Schedule(
	schedule_id int auto_increment,
	schedule_day date,
	reserve_id int,
	client_id int,
	time_id int,
	gender_id int,
	master_id int,
	FOREIGN KEY (reserve_id) REFERENCES Reserve_status(reserve_id) ON DELETE CASCADE,
	FOREIGN KEY (client_id) REFERENCES Client(client_id) ON DELETE CASCADE,
	FOREIGN KEY (time_id) REFERENCES Time_schedule(time_id) ON DELETE CASCADE,
	FOREIGN KEY (gender_id) REFERENCES Gender(gender_id) ON DELETE CASCADE,
	FOREIGN KEY (master_id) REFERENCES Master(master_id) ON DELETE CASCADE,
	primary key(schedule_id)
)ENGINE=InnoDB;

insert into Time_schedule values(1,"11:00");
	insert into Time_schedule values(2,"12:00");
		insert into Time_schedule values(3,"13:00");
			insert into Time_schedule values(4,"14:00");
				insert into Time_schedule values(5,"15:00");
					insert into Time_schedule values(6,"16:00");
						insert into Time_schedule values(7,"17:00");

insert into Gender values(1,"man");
	insert into Gender values(2,"woman");

insert into Master_speciality values(1,"barber");
	insert into Master_speciality values(2,"hairdresser");

insert into Master values(1, "Antony","Smith",1);
	insert into Master values(2, "Jeniffer","Brown",2);

insert into Reserve_status values(1,"Free");
	insert into Reserve_status values(2,"Reserved");


insert into Schedule values(NULL,"2020-05-23",1,NULL,1,1,1);
insert into Schedule values(NULL,"2020-05-23",1,NULL,2,1,1);
insert into Schedule values(NULL,"2020-05-23",1,NULL,3,1,1);
insert into Schedule values(NULL,"2020-05-23",1,NULL,4,1,1);
insert into Schedule values(NULL,"2020-05-23",1,NULL,5,1,1);
insert into Schedule values(NULL,"2020-05-23",1,NULL,6,1,1);
insert into Schedule values(NULL,"2020-05-23",1,NULL,7,1,1);
insert into Schedule values(NULL,"2020-05-23",1,NULL,1,2,2);
insert into Schedule values(NULL,"2020-05-23",1,NULL,2,2,2);
insert into Schedule values(NULL,"2020-05-23",1,NULL,3,2,2);
insert into Schedule values(NULL,"2020-05-23",1,NULL,4,2,2);
insert into Schedule values(NULL,"2020-05-23",1,NULL,5,2,2);
insert into Schedule values(NULL,"2020-05-23",1,NULL,6,2,2);
insert into Schedule values(NULL,"2020-05-23",1,NULL,7,2,2);

insert into Schedule values(NULL,"2020-05-24",1,NULL,1,1,1);
insert into Schedule values(NULL,"2020-05-24",1,NULL,2,1,1);
insert into Schedule values(NULL,"2020-05-24",1,NULL,3,1,1);
insert into Schedule values(NULL,"2020-05-24",1,NULL,4,1,1);
insert into Schedule values(NULL,"2020-05-24",1,NULL,5,1,1);
insert into Schedule values(NULL,"2020-05-24",1,NULL,6,1,1);
insert into Schedule values(NULL,"2020-05-24",1,NULL,7,1,1);
insert into Schedule values(NULL,"2020-05-24",1,NULL,1,2,2);
insert into Schedule values(NULL,"2020-05-24",1,NULL,2,2,2);
insert into Schedule values(NULL,"2020-05-24",1,NULL,3,2,2);
insert into Schedule values(NULL,"2020-05-24",1,NULL,4,2,2);
insert into Schedule values(NULL,"2020-05-24",1,NULL,5,2,2);
insert into Schedule values(NULL,"2020-05-24",1,NULL,6,2,2);
insert into Schedule values(NULL,"2020-05-24",1,NULL,7,2,2);

insert into Schedule values(NULL,"2020-05-25",1,NULL,1,1,1);
insert into Schedule values(NULL,"2020-05-25",1,NULL,2,1,1);
insert into Schedule values(NULL,"2020-05-25",1,NULL,3,1,1);
insert into Schedule values(NULL,"2020-05-25",1,NULL,4,1,1);
insert into Schedule values(NULL,"2020-05-25",1,NULL,5,1,1);
insert into Schedule values(NULL,"2020-05-25",1,NULL,6,1,1);
insert into Schedule values(NULL,"2020-05-25",1,NULL,7,1,1);
insert into Schedule values(NULL,"2020-05-25",1,NULL,1,2,2);
insert into Schedule values(NULL,"2020-05-25",1,NULL,2,2,2);
insert into Schedule values(NULL,"2020-05-25",1,NULL,3,2,2);
insert into Schedule values(NULL,"2020-05-25",1,NULL,4,2,2);
insert into Schedule values(NULL,"2020-05-25",1,NULL,5,2,2);
insert into Schedule values(NULL,"2020-05-25",1,NULL,6,2,2);
insert into Schedule values(NULL,"2020-05-25",1,NULL,7,2,2);

insert into Schedule values(NULL,"2020-05-26",1,NULL,1,1,1);
insert into Schedule values(NULL,"2020-05-26",1,NULL,2,1,1);
insert into Schedule values(NULL,"2020-05-26",1,NULL,3,1,1);
insert into Schedule values(NULL,"2020-05-26",1,NULL,4,1,1);
insert into Schedule values(NULL,"2020-05-26",1,NULL,5,1,1);
insert into Schedule values(NULL,"2020-05-26",1,NULL,6,1,1);
insert into Schedule values(NULL,"2020-05-26",1,NULL,7,1,1);
insert into Schedule values(NULL,"2020-05-26",1,NULL,1,2,2);
insert into Schedule values(NULL,"2020-05-26",1,NULL,2,2,2);
insert into Schedule values(NULL,"2020-05-26",1,NULL,3,2,2);
insert into Schedule values(NULL,"2020-05-26",1,NULL,4,2,2);
insert into Schedule values(NULL,"2020-05-26",1,NULL,5,2,2);
insert into Schedule values(NULL,"2020-05-26",1,NULL,6,2,2);
insert into Schedule values(NULL,"2020-05-26",1,NULL,7,2,2);

insert into Schedule values(NULL,"2020-05-27",1,NULL,1,1,1);
insert into Schedule values(NULL,"2020-05-27",1,NULL,2,1,1);
insert into Schedule values(NULL,"2020-05-27",1,NULL,3,1,1);
insert into Schedule values(NULL,"2020-05-27",1,NULL,4,1,1);
insert into Schedule values(NULL,"2020-05-27",1,NULL,5,1,1);
insert into Schedule values(NULL,"2020-05-27",1,NULL,6,1,1);
insert into Schedule values(NULL,"2020-05-27",1,NULL,7,1,1);
insert into Schedule values(NULL,"2020-05-27",1,NULL,1,2,2);
insert into Schedule values(NULL,"2020-05-27",1,NULL,2,2,2);
insert into Schedule values(NULL,"2020-05-27",1,NULL,3,2,2);
insert into Schedule values(NULL,"2020-05-27",1,NULL,4,2,2);
insert into Schedule values(NULL,"2020-05-27",1,NULL,5,2,2);
insert into Schedule values(NULL,"2020-05-27",1,NULL,6,2,2);
insert into Schedule values(NULL,"2020-05-27",1,NULL,7,2,2);

insert into Schedule values(NULL,"2020-05-28",1,NULL,1,1,1);
insert into Schedule values(NULL,"2020-05-28",1,NULL,2,1,1);
insert into Schedule values(NULL,"2020-05-28",1,NULL,3,1,1);
insert into Schedule values(NULL,"2020-05-28",1,NULL,4,1,1);
insert into Schedule values(NULL,"2020-05-28",1,NULL,5,1,1);
insert into Schedule values(NULL,"2020-05-28",1,NULL,6,1,1);
insert into Schedule values(NULL,"2020-05-28",1,NULL,7,1,1);
insert into Schedule values(NULL,"2020-05-28",1,NULL,1,2,2);
insert into Schedule values(NULL,"2020-05-28",1,NULL,2,2,2);
insert into Schedule values(NULL,"2020-05-28",1,NULL,3,2,2);
insert into Schedule values(NULL,"2020-05-28",1,NULL,4,2,2);
insert into Schedule values(NULL,"2020-05-28",1,NULL,5,2,2);
insert into Schedule values(NULL,"2020-05-28",1,NULL,6,2,2);
insert into Schedule values(NULL,"2020-05-28",1,NULL,7,2,2);

insert into Schedule values(NULL,"2020-05-29",1,NULL,1,1,1);
insert into Schedule values(NULL,"2020-05-29",1,NULL,2,1,1);
insert into Schedule values(NULL,"2020-05-29",1,NULL,3,1,1);
insert into Schedule values(NULL,"2020-05-29",1,NULL,4,1,1);
insert into Schedule values(NULL,"2020-05-29",1,NULL,5,1,1);
insert into Schedule values(NULL,"2020-05-29",1,NULL,6,1,1);
insert into Schedule values(NULL,"2020-05-29",1,NULL,7,1,1);
insert into Schedule values(NULL,"2020-05-29",1,NULL,1,2,2);
insert into Schedule values(NULL,"2020-05-29",1,NULL,2,2,2);
insert into Schedule values(NULL,"2020-05-29",1,NULL,3,2,2);
insert into Schedule values(NULL,"2020-05-29",1,NULL,4,2,2);
insert into Schedule values(NULL,"2020-05-29",1,NULL,5,2,2);
insert into Schedule values(NULL,"2020-05-29",1,NULL,6,2,2);
insert into Schedule values(NULL,"2020-05-29",1,NULL,7,2,2);

insert into Schedule values(NULL,"2020-05-30",1,NULL,1,1,1);
insert into Schedule values(NULL,"2020-05-30",1,NULL,2,1,1);
insert into Schedule values(NULL,"2020-05-30",1,NULL,3,1,1);
insert into Schedule values(NULL,"2020-05-30",1,NULL,4,1,1);
insert into Schedule values(NULL,"2020-05-30",1,NULL,5,1,1);
insert into Schedule values(NULL,"2020-05-30",1,NULL,6,1,1);
insert into Schedule values(NULL,"2020-05-30",1,NULL,7,1,1);
insert into Schedule values(NULL,"2020-05-30",1,NULL,1,2,2);
insert into Schedule values(NULL,"2020-05-30",1,NULL,2,2,2);
insert into Schedule values(NULL,"2020-05-30",1,NULL,3,2,2);
insert into Schedule values(NULL,"2020-05-30",1,NULL,4,2,2);
insert into Schedule values(NULL,"2020-05-30",1,NULL,5,2,2);
insert into Schedule values(NULL,"2020-05-30",1,NULL,6,2,2);
insert into Schedule values(NULL,"2020-05-30",1,NULL,7,2,2);

insert into Schedule values(NULL,"2020-05-31",1,NULL,1,1,1);
insert into Schedule values(NULL,"2020-05-31",1,NULL,2,1,1);
insert into Schedule values(NULL,"2020-05-31",1,NULL,3,1,1);
insert into Schedule values(NULL,"2020-05-31",1,NULL,4,1,1);
insert into Schedule values(NULL,"2020-05-31",1,NULL,5,1,1);
insert into Schedule values(NULL,"2020-05-31",1,NULL,6,1,1);
insert into Schedule values(NULL,"2020-05-31",1,NULL,7,1,1);
insert into Schedule values(NULL,"2020-05-31",1,NULL,1,2,2);
insert into Schedule values(NULL,"2020-05-31",1,NULL,2,2,2);
insert into Schedule values(NULL,"2020-05-31",1,NULL,3,2,2);
insert into Schedule values(NULL,"2020-05-31",1,NULL,4,2,2);
insert into Schedule values(NULL,"2020-05-31",1,NULL,5,2,2);
insert into Schedule values(NULL,"2020-05-31",1,NULL,6,2,2);
insert into Schedule values(NULL,"2020-05-31",1,NULL,7,2,2);

insert into Schedule values(NULL,"2020-06-01",1,NULL,1,1,1);
insert into Schedule values(NULL,"2020-06-01",1,NULL,2,1,1);
insert into Schedule values(NULL,"2020-06-01",1,NULL,3,1,1);
insert into Schedule values(NULL,"2020-06-01",1,NULL,4,1,1);
insert into Schedule values(NULL,"2020-06-01",1,NULL,5,1,1);
insert into Schedule values(NULL,"2020-06-01",1,NULL,6,1,1);
insert into Schedule values(NULL,"2020-06-01",1,NULL,7,1,1);
insert into Schedule values(NULL,"2020-06-01",1,NULL,1,2,2);
insert into Schedule values(NULL,"2020-06-01",1,NULL,2,2,2);
insert into Schedule values(NULL,"2020-06-01",1,NULL,3,2,2);
insert into Schedule values(NULL,"2020-06-01",1,NULL,4,2,2);
insert into Schedule values(NULL,"2020-06-01",1,NULL,5,2,2);
insert into Schedule values(NULL,"2020-06-01",1,NULL,6,2,2);
insert into Schedule values(NULL,"2020-06-01",1,NULL,7,2,2);	

insert into Schedule values(NULL,"2020-06-02",1,NULL,1,1,1);
insert into Schedule values(NULL,"2020-06-02",1,NULL,2,1,1);
insert into Schedule values(NULL,"2020-06-02",1,NULL,3,1,1);
insert into Schedule values(NULL,"2020-06-02",1,NULL,4,1,1);
insert into Schedule values(NULL,"2020-06-02",1,NULL,5,1,1);
insert into Schedule values(NULL,"2020-06-02",1,NULL,6,1,1);
insert into Schedule values(NULL,"2020-06-02",1,NULL,7,1,1);
insert into Schedule values(NULL,"2020-06-02",1,NULL,1,2,2);
insert into Schedule values(NULL,"2020-06-02",1,NULL,2,2,2);
insert into Schedule values(NULL,"2020-06-02",1,NULL,3,2,2);
insert into Schedule values(NULL,"2020-06-02",1,NULL,4,2,2);
insert into Schedule values(NULL,"2020-06-02",1,NULL,5,2,2);
insert into Schedule values(NULL,"2020-06-02",1,NULL,6,2,2);
insert into Schedule values(NULL,"2020-06-02",1,NULL,7,2,2);

insert into Schedule values(NULL,"2020-06-03",1,NULL,1,1,1);
insert into Schedule values(NULL,"2020-06-03",1,NULL,2,1,1);
insert into Schedule values(NULL,"2020-06-03",1,NULL,3,1,1);
insert into Schedule values(NULL,"2020-06-03",1,NULL,4,1,1);
insert into Schedule values(NULL,"2020-06-03",1,NULL,5,1,1);
insert into Schedule values(NULL,"2020-06-03",1,NULL,6,1,1);
insert into Schedule values(NULL,"2020-06-03",1,NULL,7,1,1);
insert into Schedule values(NULL,"2020-06-03",1,NULL,1,2,2);
insert into Schedule values(NULL,"2020-06-03",1,NULL,2,2,2);
insert into Schedule values(NULL,"2020-06-03",1,NULL,3,2,2);
insert into Schedule values(NULL,"2020-06-03",1,NULL,4,2,2);
insert into Schedule values(NULL,"2020-06-03",1,NULL,5,2,2);
insert into Schedule values(NULL,"2020-06-03",1,NULL,6,2,2);
insert into Schedule values(NULL,"2020-06-03",1,NULL,7,2,2);

insert into Schedule values(NULL,"2020-06-04",1,NULL,1,1,1);
insert into Schedule values(NULL,"2020-06-04",1,NULL,2,1,1);
insert into Schedule values(NULL,"2020-06-04",1,NULL,3,1,1);
insert into Schedule values(NULL,"2020-06-04",1,NULL,4,1,1);
insert into Schedule values(NULL,"2020-06-04",1,NULL,5,1,1);
insert into Schedule values(NULL,"2020-06-04",1,NULL,6,1,1);
insert into Schedule values(NULL,"2020-06-04",1,NULL,7,1,1);
insert into Schedule values(NULL,"2020-06-04",1,NULL,1,2,2);
insert into Schedule values(NULL,"2020-06-04",1,NULL,2,2,2);
insert into Schedule values(NULL,"2020-06-04",1,NULL,3,2,2);
insert into Schedule values(NULL,"2020-06-04",1,NULL,4,2,2);
insert into Schedule values(NULL,"2020-06-04",1,NULL,5,2,2);
insert into Schedule values(NULL,"2020-06-04",1,NULL,6,2,2);
insert into Schedule values(NULL,"2020-06-04",1,NULL,7,2,2);

insert into Schedule values(NULL,"2020-06-05",1,NULL,1,1,1);
insert into Schedule values(NULL,"2020-06-05",1,NULL,2,1,1);
insert into Schedule values(NULL,"2020-06-05",1,NULL,3,1,1);
insert into Schedule values(NULL,"2020-06-05",1,NULL,4,1,1);
insert into Schedule values(NULL,"2020-06-05",1,NULL,5,1,1);
insert into Schedule values(NULL,"2020-06-05",1,NULL,6,1,1);
insert into Schedule values(NULL,"2020-06-05",1,NULL,7,1,1);
insert into Schedule values(NULL,"2020-06-05",1,NULL,1,2,2);
insert into Schedule values(NULL,"2020-06-05",1,NULL,2,2,2);
insert into Schedule values(NULL,"2020-06-05",1,NULL,3,2,2);
insert into Schedule values(NULL,"2020-06-05",1,NULL,4,2,2);
insert into Schedule values(NULL,"2020-06-05",1,NULL,5,2,2);
insert into Schedule values(NULL,"2020-06-05",1,NULL,6,2,2);
insert into Schedule values(NULL,"2020-06-05",1,NULL,7,2,2);

insert into Schedule values(NULL,"2020-06-06",1,NULL,1,1,1);
insert into Schedule values(NULL,"2020-06-06",1,NULL,2,1,1);
insert into Schedule values(NULL,"2020-06-06",1,NULL,3,1,1);
insert into Schedule values(NULL,"2020-06-06",1,NULL,4,1,1);
insert into Schedule values(NULL,"2020-06-06",1,NULL,5,1,1);
insert into Schedule values(NULL,"2020-06-06",1,NULL,6,1,1);
insert into Schedule values(NULL,"2020-06-06",1,NULL,7,1,1);
insert into Schedule values(NULL,"2020-06-06",1,NULL,1,2,2);
insert into Schedule values(NULL,"2020-06-06",1,NULL,2,2,2);
insert into Schedule values(NULL,"2020-06-06",1,NULL,3,2,2);
insert into Schedule values(NULL,"2020-06-06",1,NULL,4,2,2);
insert into Schedule values(NULL,"2020-06-06",1,NULL,5,2,2);
insert into Schedule values(NULL,"2020-06-06",1,NULL,6,2,2);
insert into Schedule values(NULL,"2020-06-06",1,NULL,7,2,2);











Schedule(schedule_id,schedule_day,reserve_id(STATUS),client_id,time_id,gender_id,master_id)

После того как мы добавили нового клиента, нам необходимо обновить таблицу Расписания, и поменять там статус.

update schedule
set client_id = 2, reserve_id=2
where time_id=1 and schedule_day ='2020-05-18';

SQL select for man
select schedule.schedule_id, schedule.schedule_day, gender.gender,Time_schedule.time_of_schedule,
master.master_name,master.master_surname, Reserve_status.reserve_status
from schedule join gender
on schedule.gender_id = gender.gender_id
	join Time_schedule
	on schedule.time_id = Time_schedule.time_id
		join master
		on schedule.master_id = master.master_id
			join Reserve_status
			on schedule.reserve_id = Reserve_status.reserve_id
where schedule.schedule_day="2020-05-22" and gender.gender_id=1
;

SQL select for woman
select schedule.schedule_id, schedule.schedule_day, gender.gender,Time_schedule.time_of_schedule,
master.master_name,master.master_surname, Reserve_status.reserve_status
from schedule join gender
on schedule.gender_id = gender.gender_id
	join Time_schedule
	on schedule.time_id = Time_schedule.time_id
		join master
		on schedule.master_id = master.master_id
			join Reserve_status
			on schedule.reserve_id = Reserve_status.reserve_id
where schedule.schedule_day="2020-05-23" and gender.gender_id=2
;


SQL reserve

select schedule.schedule_id, schedule.schedule_day, gender.gender,Time_schedule.time_of_schedule,
master.master_name,master.master_surname, Reserve_status.reserve_status
from schedule join gender
on schedule.gender_id = gender.gender_id
	join Time_schedule
	on schedule.time_id = Time_schedule.time_id
		join master
		on schedule.master_id = master.master_id
			join Reserve_status
			on schedule.reserve_id = Reserve_status.reserve_id
where schedule.schedule_day="2020-05-23" and gender.gender_id=1 and Reserve_status.reserve_status="Free"
;


insert into Client values(NULL,"Stefan","Padalekki","380965351322");
select * from client where client_name="Stefan" and client_surname="Padalekki" and client_ph_number="380965351322";
update schedule set reserve_id = 2, client_id = 5 where schedule_id=3;