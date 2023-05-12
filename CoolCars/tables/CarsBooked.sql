create table CarsBooked
(id          number
,cmr_id      number
,car_license varchar2(10)
,date_from   date
,date_to     date
,dailyrate   number(5,2)
);

alter table CarsBooked add constraint cbo_pk primary key (id);

alter table CarsBooked add constraint cbo_uk1 unique (car_license,date_from);

create index cbo_idx1 on CarsBooked (cmr_id);

create sequence cbo_seq1;
