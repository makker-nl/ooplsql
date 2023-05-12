alter table ROOMSAVAILABLE
  add constraint RAV_HTL_FK1 foreign key (HTL_ID)
  references HOTELS (ID);
alter table RoomsBooked add constraint rbk_htl_fk1 foreign key (htl_id) references Hotels (id);
alter table RoomsBooked add constraint rbk_cmr_fk1 foreign key (cmr_id) references RoomCustomers (id);
