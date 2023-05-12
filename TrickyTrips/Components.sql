create table Components
(code         varchar2(3)
,description  varchar2(80)
);

alter table Components add constraint cmp_pk primary key (code);

insert into Components (code,description) values ('AIR','Airline Tickets');
insert into Components (code,description) values ('CAR','Rental Vehicles');
insert into Components (code,description) values ('HTL','Hotel Rooms');
