create table TripCustomers
(id          number
,last_name   varchar2(40)
,initials    varchar2(10)
,gender      varchar2(1)
,birthday    date
,address     varchar2(200)
,city        varchar2(30)
,zipcode     varchar2(10)
,email       varchar2(60)
,bankacct    varchar2(20)
);

alter table TripCustomers add constraint cmr_pk primary key (id);

create index cmr_idx1 on TripCustomers (last_name);

create sequence cmr_seq1;
