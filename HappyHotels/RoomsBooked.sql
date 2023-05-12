create table RoomsBooked
(id              number
,cmr_id          number
,htl_id          number
,room            varchar2(5)
,from_date       date
,to_date         date
,roomrate        number(5,2)
,capacity        number(4)
);

alter table RoomsBooked add constraint rbk_pk primary key (id);

alter table RoomsBooked add constraint rbk_uk1 unique (htl_id,room,from_date);

create index rbk_idx1 on RoomsBooked (cmr_id);
create index rbk_idx2 on RoomsBooked (htl_id);

create sequence rbk_seq1;
