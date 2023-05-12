create table SupplierComponents
(sup_id          number
,cmp_code        varchar2(3)
,margin_pct      number(3)
);

alter table SupplierComponents add constraint cpn_pk primary key (sup_id,cmp_code);

alter table SupplierComponents add constraint cpn_sup_fk1 foreign key (sup_id) references Suppliers (id);
alter table SupplierComponents add constraint cpn_cmp_fk1 foreign key (cmp_code) references Components (code);

create index cpn_idx1 on SupplierComponents (cmp_code);

insert into SupplierComponents (sup_id,cmp_code,margin_pct) values (1,'AIR',5);
insert into SupplierComponents (sup_id,cmp_code,margin_pct) values (2,'CAR',5);
insert into SupplierComponents (sup_id,cmp_code,margin_pct) values (3,'HTL',5);
insert into SupplierComponents (sup_id,cmp_code,margin_pct) values (4,'AIR',5);
insert into SupplierComponents (sup_id,cmp_code,margin_pct) values (5,'CAR',5);
insert into SupplierComponents (sup_id,cmp_code,margin_pct) values (6,'HTL',5);
