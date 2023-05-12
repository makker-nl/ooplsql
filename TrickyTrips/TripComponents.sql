create table TripComponents
(id           number
,trp_id       number
,sup_id       number
,cmp_code     varchar2(3)
,price        number(6,2)
,cost         number(6,2)
,status       varchar2(1)
,reference    varchar2(30)
);

alter table TripComponents add constraint tcp_pk primary key (id);


create index tcp_idx1 on TripComponents (sup_id);
create index tcp_idx2 on TripComponents (cmp_code);
create index tcp_idx3 on TripComponents (trp_id);

create sequence tcp_seq1;
