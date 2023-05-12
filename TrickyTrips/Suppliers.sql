create table Suppliers
(id             number
,name           varchar2(80)
,ind_external   varchar2(1)
,i_systemname   varchar2(30)
,e_url          varchar2(150)
);

alter table Suppliers add constraint sup_pk primary key (id);

insert into Suppliers (id,name,ind_external,i_systemname,e_url)
values (1,'Amazing Airlines - Flights','E',null,'http://');
insert into Suppliers (id,name,ind_external,i_systemname,e_url)
values (2,'Amazing Airlines - Cars','E',null,'http://');
insert into Suppliers (id,name,ind_external,i_systemname,e_url)
values (3,'Better Beds - Hotels','E',null,'http://');
insert into Suppliers (id,name,ind_external,i_systemname,e_url)
values (4,'Better Beds - Flights','E',null,'http://');
insert into Suppliers (id,name,ind_external,i_systemname,e_url)
values (5,'Cool Cars - Cars','I','WheelDealer',null);
insert into Suppliers (id,name,ind_external,i_systemname,e_url)
values (6,'Cool Cars - Hotels','I','RoomDealer',null);

