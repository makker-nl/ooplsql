create table TripComponentPeople
(tcp_id     number
,tpp_id     number
);

alter table TripComponentPeople add constraint tce_pk primary key (tcp_id,tpp_id);
