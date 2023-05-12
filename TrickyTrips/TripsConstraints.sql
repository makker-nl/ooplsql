alter table Trips add constraint trp_cmr_fk1 foreign key (cmr_id) references TripCustomers (id);
alter table TripPeople add constraint tpp_trp_fk1 foreign key (trp_id) references Trips (id);
alter table TripComponents add constraint tcp_trp_fk1 foreign key (trp_id) references Trips (id);
alter table TripComponents add constraint tcp_sup_fk1 foreign key (sup_id) references Suppliers (id);
alter table TripComponents add constraint tcp_cmp_fk1 foreign key (cmp_code) references Components (code);
alter table TRIPCOMPONENTPEOPLE
  add constraint TCE_TCP_FK1 foreign key (TCP_ID)
  references TRIPCOMPONENTS (ID);
alter table TRIPCOMPONENTPEOPLE
  add constraint TCE_TPP_FK1 foreign key (TPP_ID)
  references TRIPPEOPLE (ID);
