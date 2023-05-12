create table TripPeople
(id             number
,trp_id         number
,last_name      varchar2(40)
,initials       varchar2(10)
,gender         varchar2(1)
,birthday       date
,address        varchar2(200)
,city           varchar2(30)
,zipcode        varchar2(10)
,passport_no    varchar2(20)
,passport_exp   date
);

alter table TripPeople add constraint tpp_pk primary key (id);

create index tpp_idx1 on TripPeople (trp_id);

create sequence tpp_seq1;
