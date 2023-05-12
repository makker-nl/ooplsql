prompt PL/SQL Developer import file
prompt Created on Thursday, July 01, 2004 by mbrouwer
set feedback off
set define off
prompt Creating CARS...
create table CARS
(
  LICENSE  VARCHAR2(10) not null,
  CATEGORY NUMBER(1),
  YEAR     NUMBER(4),
  BRAND    VARCHAR2(20),
  MODEL    VARCHAR2(30),
  CITY     VARCHAR2(30),
  COUNTRY  VARCHAR2(30)
);
alter table CARS
  add constraint CAR_PK primary key (LICENSE);
create index CAR_IDX1 on CARS (CATEGORY);

prompt Disabling triggers for CARS...
alter table CARS disable all triggers;
prompt Deleting CARS...
delete from CARS;
commit;
prompt Loading CARS...
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('79-JF-VP', 1, 2002, 'BMW', '320D', 'Amsterdam', 'The Netherlands');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('15-DF-HJ', 2, 2001, 'Peugeot', '406', 'Amsterdam', 'The Netherlands');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('54-KK-RT', 3, 2003, 'Renault', 'Megane', 'Amsterdam', 'The Netherlands');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('34-FT-LK', 4, 2002, 'Fiat', 'Stilo', 'Amsterdam', 'The Netherlands');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('91-CF-LM', 5, 2000, 'Toyota', 'Starlet', 'Amsterdam', 'The Netherlands');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('UG6MT4', 1, 2002, 'BMW', '320D', 'London', 'United Kingdom');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('VK8DG4', 2, 2001, 'Peugeot', '406', 'London', 'United Kingdom');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('JR8GG1', 3, 2003, 'Renault', 'Megane', 'London', 'United Kingdom');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('FE2YI2', 4, 2002, 'Fiat', 'Stilo', 'London', 'United Kingdom');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('OMV3LL', 5, 2000, 'Toyota', 'Starlet', 'London', 'United Kingdom');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('54646', 1, 2002, 'BMW', '320D', 'Tokyo', 'Japan');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('545464', 2, 2001, 'Peugeot', '406', 'Tokyo', 'Japan');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('81548', 3, 2003, 'Renault', 'Megane', 'Tokyo', 'Japan');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('849161', 4, 2002, 'Fiat', 'Stilo', 'Tokyo', 'Japan');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('68461', 5, 2000, 'Toyota', 'Starlet', 'Tokyo', 'Japan');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('SOCOOL', 1, 2002, 'BMW', '320D', 'Los Angeles, California', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('EF7D44', 2, 2001, 'Peugeot', '406', 'Los Angeles, California', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('KYT45D', 3, 2003, 'Renault', 'Megane', 'Los Angeles, California', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('DKL4G', 4, 2002, 'Fiat', 'Stilo', 'Los Angeles, California', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('GR5G5', 5, 2000, 'Toyota', 'Starlet', 'Los Angeles, California', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('T45GG1', 1, 2002, 'BMW', '320D', 'Las Vegas, Nevada', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('J6EK5H5', 2, 2001, 'Peugeot', '406', 'Las Vegas, Nevada', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('HAER5H', 3, 2003, 'Renault', 'Megane', 'Las Vegas, Nevada', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('H56EH', 4, 2002, 'Fiat', 'Stilo', 'Las Vegas, Nevada', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('H1KEAR2', 5, 2000, 'Toyota', 'Starlet', 'Las Vegas, Nevada', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('8AH5EF', 1, 2002, 'BMW', '320D', 'Madrid', 'Spain');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('9HH25', 2, 2001, 'Peugeot', '406', 'Madrid', 'Spain');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('AQRE5H', 3, 2003, 'Renault', 'Megane', 'Madrid', 'Spain');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('8AH55', 4, 2002, 'Fiat', 'Stilo', 'Madrid', 'Spain');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('ERH5WG', 5, 2000, 'Toyota', 'Starlet', 'Madrid', 'Spain');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('AHE415A', 1, 2002, 'BMW', '320D', 'Hong Kong', 'Peoples Republic of China');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('A5ER45', 2, 2001, 'Peugeot', '406', 'Hong Kong', 'Peoples Republic of China');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('J5RTAH', 3, 2003, 'Renault', 'Megane', 'Hong Kong', 'Peoples Republic of China');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('56JAEJ', 4, 2002, 'Fiat', 'Stilo', 'Hong Kong', 'Peoples Republic of China');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('LAJT66R', 5, 2000, 'Toyota', 'Starlet', 'Hong Kong', 'Peoples Republic of China');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('MG48R51', 1, 2002, 'BMW', '320D', 'San Francisco, California', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('8481HEF', 2, 2001, 'Peugeot', '406', 'San Francisco, California', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('FD5HA5', 3, 2003, 'Renault', 'Megane', 'San Francisco, California', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('6H5100', 4, 2002, 'Fiat', 'Stilo', 'San Francisco, California', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('HE4RH0', 5, 2000, 'Toyota', 'Starlet', 'San Francisco, California', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('T83FOJ', 1, 2002, 'BMW', '320D', 'Miami, Florida', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('45N7447', 2, 2001, 'Peugeot', '406', 'Miami, Florida', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('EJQTU', 3, 2003, 'Renault', 'Megane', 'Miami, Florida', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('75YMO8', 4, 2002, 'Fiat', 'Stilo', 'Miami, Florida', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('68YQY1', 5, 2000, 'Toyota', 'Starlet', 'Miami, Florida', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('YH356', 1, 2002, 'BMW', '320D', 'London', 'United Kingdom');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('686QT', 2, 2001, 'Peugeot', '406', 'London', 'United Kingdom');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('68YBRQ', 3, 2003, 'Renault', 'Megane', 'London', 'United Kingdom');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('YB545B', 4, 2002, 'Fiat', 'Stilo', 'London', 'United Kingdom');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('U458Q', 5, 2000, 'Toyota', 'Starlet', 'London', 'United Kingdom');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('UN55U4', 1, 2002, 'BMW', '320D', 'Singapore ', 'Singapore');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('8254RY', 2, 2001, 'Peugeot', '406', 'Singapore ', 'Singapore');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('I2N4YRT', 3, 2003, 'Renault', 'Megane', 'Singapore ', 'Singapore');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('N24746UQ', 4, 2002, 'Fiat', 'Stilo', 'Singapore ', 'Singapore');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('RN2445', 5, 2000, 'Toyota', 'Starlet', 'Singapore ', 'Singapore');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('82TUW4', 1, 2002, 'BMW', '320D', 'Seattle, Washington', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('N45UW', 2, 2001, 'Peugeot', '406', 'Seattle, Washington', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('62QR', 3, 2003, 'Renault', 'Megane', 'Seattle, Washington', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('W56U245', 4, 2002, 'Fiat', 'Stilo', 'Seattle, Washington', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('NY24YQ', 5, 2000, 'Toyota', 'Starlet', 'Seattle, Washington', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('QWB476', 1, 2002, 'BMW', '320D', 'Orlando, Florida', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('571848H', 2, 2001, 'Peugeot', '406', 'Orlando, Florida', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('U14UQ4', 3, 2003, 'Renault', 'Megane', 'Orlando, Florida', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('U12QEI', 4, 2002, 'Fiat', 'Stilo', 'Orlando, Florida', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('U7NI8', 5, 2000, 'Toyota', 'Starlet', 'Orlando, Florida', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('H4M3Y', 1, 2002, 'BMW', '320D', 'Saint Louis, Missouri', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('EJ32JEM', 2, 2001, 'Peugeot', '406', 'Saint Louis, Missouri', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('YJJYR55', 3, 2003, 'Renault', 'Megane', 'Saint Louis, Missouri', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('454JQA', 4, 2002, 'Fiat', 'Stilo', 'Saint Louis, Missouri', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('JH5U9471', 5, 2000, 'Toyota', 'Starlet', 'Saint Louis, Missouri', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('28YMQ4', 1, 2002, 'BMW', '320D', 'Minneapolis/Saint Paul', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('84HWN', 3, 2001, 'Peugeot', '406', 'Minneapolis/Saint Paul', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('IHA74E2', 3, 2003, 'Renault', 'Megane', 'Minneapolis/Saint Paul', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('TJQJ53', 4, 2002, 'Fiat', 'Stilo', 'Minneapolis/Saint Paul', 'United States');
insert into CARS (LICENSE, CATEGORY, YEAR, BRAND, MODEL, CITY, COUNTRY)
values ('TQ7534', 5, 2000, 'Toyota', 'Starlet', 'Minneapolis/Saint Paul', 'United States');
commit;
prompt 75 records loaded
prompt Enabling triggers for CARS...
alter table CARS enable all triggers;
set feedback on
set define on
prompt Done.
