alter table CARSAVAILABLE
  add constraint CAV_CAR_FK foreign key (CAR_LICENSE)
  references CARS (LICENSE);
alter table CarsBooked add constraint cbo_car_fk1 foreign key (car_license) references Cars (license);
alter table CarsBooked add constraint cbo_cmr_fk1 foreign key (cmr_id) references CarCustomers (id);
