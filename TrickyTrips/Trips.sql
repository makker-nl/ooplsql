create table Trips
(id             number
,cmr_id         number
,status         varchar2(1)
,booking_date   date
,starting_date  date
,return_date    date
,status_date    date
,total_price    number(7,2)
);

alter table Trips add constraint trp_pk primary key (id);

create sequence trp_seq1;
