prompt PL/SQL Developer import file
prompt Created on Thursday, July 01, 2004 by mbrouwer
set feedback off
set define off
prompt Creating HOTELS...
create table HOTELS
(
  ID      NUMBER not null,
  NAME    VARCHAR2(100),
  CITY    VARCHAR2(30),
  COUNTRY VARCHAR2(30),
  STARS   NUMBER(1)
);
alter table HOTELS
  add constraint HTL_PK primary key (ID);
create index HTL_IDX1 on HOTELS (COUNTRY,CITY);

prompt Disabling triggers for HOTELS...
alter table HOTELS disable all triggers;
prompt Deleting HOTELS...
delete from HOTELS;
commit;
prompt Loading HOTELS...
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (1, 'Splendido', 'Amsterdam', 'The Netherlands', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (2, 'Concorde', 'Amsterdam', 'The Netherlands', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (3, 'Ritz', 'Amsterdam', 'The Netherlands', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (4, 'Tulip Inn', 'Amsterdam', 'The Netherlands', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (5, 'Ariston', 'Amsterdam', 'The Netherlands', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (6, 'Grand Hotel', 'Amsterdam', 'The Netherlands', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (7, 'Splendido', 'Atlanta, Georgia', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (8, 'Concorde', 'Atlanta, Georgia', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (9, 'Ritz', 'Atlanta, Georgia', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (10, 'Tulip Inn', 'Atlanta, Georgia', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (11, 'Ariston', 'Atlanta, Georgia', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (12, 'Grand Hotel', 'Atlanta, Georgia', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (13, 'Splendido', 'Bangkok', 'Thailand', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (14, 'Concorde', 'Bangkok', 'Thailand', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (15, 'Ritz', 'Bangkok', 'Thailand', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (16, 'Tulip Inn', 'Bangkok', 'Thailand', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (17, 'Ariston', 'Bangkok', 'Thailand', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (18, 'Grand Hotel', 'Bangkok', 'Thailand', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (19, 'Splendido', 'Beijing', 'Peoples Republic of China', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (20, 'Concorde', 'Beijing', 'Peoples Republic of China', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (21, 'Ritz', 'Beijing', 'Peoples Republic of China', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (22, 'Tulip Inn', 'Beijing', 'Peoples Republic of China', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (23, 'Ariston', 'Beijing', 'Peoples Republic of China', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (24, 'Grand Hotel', 'Beijing', 'Peoples Republic of China', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (25, 'Splendido', 'Chicago, Illinois', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (26, 'Concorde', 'Chicago, Illinois', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (27, 'Ritz', 'Chicago, Illinois', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (28, 'Tulip Inn', 'Chicago, Illinois', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (29, 'Ariston', 'Chicago, Illinois', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (30, 'Grand Hotel', 'Chicago, Illinois', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (31, 'Splendido', 'Dallas/Fort Worth, Texas', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (32, 'Concorde', 'Dallas/Fort Worth, Texas', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (33, 'Ritz', 'Dallas/Fort Worth, Texas', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (34, 'Tulip Inn', 'Dallas/Fort Worth, Texas', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (35, 'Ariston', 'Dallas/Fort Worth, Texas', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (36, 'Grand Hotel', 'Dallas/Fort Worth, Texas', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (37, 'Splendido', 'Denver, Colorado', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (38, 'Concorde', 'Denver, Colorado', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (39, 'Ritz', 'Denver, Colorado', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (40, 'Tulip Inn', 'Denver, Colorado', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (41, 'Ariston', 'Denver, Colorado', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (42, 'Grand Hotel', 'Denver, Colorado', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (43, 'Splendido', 'Detroit, Michigan', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (44, 'Concorde', 'Detroit, Michigan', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (45, 'Ritz', 'Detroit, Michigan', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (46, 'Tulip Inn', 'Detroit, Michigan', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (47, 'Ariston', 'Detroit, Michigan', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (48, 'Grand Hotel', 'Detroit, Michigan', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (49, 'Splendido', 'Frankfurt', 'Germany', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (50, 'Concorde', 'Frankfurt', 'Germany', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (51, 'Ritz', 'Frankfurt', 'Germany', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (52, 'Tulip Inn', 'Frankfurt', 'Germany', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (53, 'Ariston', 'Frankfurt', 'Germany', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (54, 'Grand Hotel', 'Frankfurt', 'Germany', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (55, 'Splendido', 'Hong Kong', 'Peoples Republic of China', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (56, 'Concorde', 'Hong Kong', 'Peoples Republic of China', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (57, 'Ritz', 'Hong Kong', 'Peoples Republic of China', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (58, 'Tulip Inn', 'Hong Kong', 'Peoples Republic of China', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (59, 'Ariston', 'Hong Kong', 'Peoples Republic of China', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (60, 'Grand Hotel', 'Hong Kong', 'Peoples Republic of China', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (61, 'Splendido', 'Houston, Texas', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (62, 'Concorde', 'Houston, Texas', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (63, 'Ritz', 'Houston, Texas', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (64, 'Tulip Inn', 'Houston, Texas', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (65, 'Ariston', 'Houston, Texas', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (66, 'Grand Hotel', 'Houston, Texas', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (67, 'Splendido', 'Las Vegas, Nevada', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (68, 'Concorde', 'Las Vegas, Nevada', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (69, 'Ritz', 'Las Vegas, Nevada', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (70, 'Tulip Inn', 'Las Vegas, Nevada', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (71, 'Ariston', 'Las Vegas, Nevada', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (72, 'Grand Hotel', 'Las Vegas, Nevada', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (73, 'Splendido', 'London', 'United Kingdom', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (74, 'Concorde', 'London', 'United Kingdom', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (75, 'Ritz', 'London', 'United Kingdom', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (76, 'Tulip Inn', 'London', 'United Kingdom', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (77, 'Ariston', 'London', 'United Kingdom', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (78, 'Grand Hotel', 'London', 'United Kingdom', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (79, 'Splendido', 'Los Angeles, California', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (80, 'Concorde', 'Los Angeles, California', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (81, 'Ritz', 'Los Angeles, California', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (82, 'Tulip Inn', 'Los Angeles, California', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (83, 'Ariston', 'Los Angeles, California', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (84, 'Grand Hotel', 'Los Angeles, California', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (85, 'Splendido', 'Madrid', 'Spain', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (86, 'Concorde', 'Madrid', 'Spain', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (87, 'Ritz', 'Madrid', 'Spain', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (88, 'Tulip Inn', 'Madrid', 'Spain', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (89, 'Ariston', 'Madrid', 'Spain', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (90, 'Grand Hotel', 'Madrid', 'Spain', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (91, 'Splendido', 'Miami, Florida', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (92, 'Concorde', 'Miami, Florida', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (93, 'Ritz', 'Miami, Florida', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (94, 'Tulip Inn', 'Miami, Florida', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (95, 'Ariston', 'Miami, Florida', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (96, 'Grand Hotel', 'Miami, Florida', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (97, 'Splendido', 'Minneapolis/Saint Paul', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (98, 'Concorde', 'Minneapolis/Saint Paul', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (99, 'Ritz', 'Minneapolis/Saint Paul', 'United States', 4);
commit;
prompt 100 records committed...
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (100, 'Tulip Inn', 'Minneapolis/Saint Paul', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (101, 'Ariston', 'Minneapolis/Saint Paul', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (102, 'Grand Hotel', 'Minneapolis/Saint Paul', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (103, 'Splendido', 'New York City, New York', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (104, 'Concorde', 'New York City, New York', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (105, 'Ritz', 'New York City, New York', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (106, 'Tulip Inn', 'New York City, New York', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (107, 'Ariston', 'New York City, New York', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (108, 'Grand Hotel', 'New York City, New York', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (109, 'Splendido', 'Newark, New Jersey', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (110, 'Concorde', 'Newark, New Jersey', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (111, 'Ritz', 'Newark, New Jersey', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (112, 'Tulip Inn', 'Newark, New Jersey', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (113, 'Ariston', 'Newark, New Jersey', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (114, 'Grand Hotel', 'Newark, New Jersey', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (115, 'Splendido', 'Orlando, Florida', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (116, 'Concorde', 'Orlando, Florida', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (117, 'Ritz', 'Orlando, Florida', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (118, 'Tulip Inn', 'Orlando, Florida', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (119, 'Ariston', 'Orlando, Florida', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (120, 'Grand Hotel', 'Orlando, Florida', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (121, 'Splendido', 'Paris', 'France', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (122, 'Concorde', 'Paris', 'France', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (123, 'Ritz', 'Paris', 'France', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (124, 'Tulip Inn', 'Paris', 'France', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (125, 'Ariston', 'Paris', 'France', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (126, 'Grand Hotel', 'Paris', 'France', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (127, 'Splendido', 'Phoenix, Arizona', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (128, 'Concorde', 'Phoenix, Arizona', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (129, 'Ritz', 'Phoenix, Arizona', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (130, 'Tulip Inn', 'Phoenix, Arizona', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (131, 'Ariston', 'Phoenix, Arizona', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (132, 'Grand Hotel', 'Phoenix, Arizona', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (133, 'Splendido', 'Saint Louis, Missouri', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (134, 'Concorde', 'Saint Louis, Missouri', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (135, 'Ritz', 'Saint Louis, Missouri', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (136, 'Tulip Inn', 'Saint Louis, Missouri', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (137, 'Ariston', 'Saint Louis, Missouri', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (138, 'Grand Hotel', 'Saint Louis, Missouri', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (139, 'Splendido', 'San Francisco, California', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (140, 'Concorde', 'San Francisco, California', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (141, 'Ritz', 'San Francisco, California', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (142, 'Tulip Inn', 'San Francisco, California', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (143, 'Ariston', 'San Francisco, California', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (144, 'Grand Hotel', 'San Francisco, California', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (145, 'Splendido', 'Seattle, Washington', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (146, 'Concorde', 'Seattle, Washington', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (147, 'Ritz', 'Seattle, Washington', 'United States', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (148, 'Tulip Inn', 'Seattle, Washington', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (149, 'Ariston', 'Seattle, Washington', 'United States', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (150, 'Grand Hotel', 'Seattle, Washington', 'United States', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (151, 'Splendido', 'Singapore', 'Singapore', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (152, 'Concorde', 'Singapore', 'Singapore', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (153, 'Ritz', 'Singapore', 'Singapore', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (154, 'Tulip Inn', 'Singapore', 'Singapore', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (155, 'Ariston', 'Singapore', 'Singapore', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (156, 'Grand Hotel', 'Singapore', 'Singapore', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (157, 'Splendido', 'Tokyo', 'Japan', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (158, 'Concorde', 'Tokyo', 'Japan', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (159, 'Ritz', 'Tokyo', 'Japan', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (160, 'Tulip Inn', 'Tokyo', 'Japan', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (161, 'Ariston', 'Tokyo', 'Japan', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (162, 'Grand Hotel', 'Tokyo', 'Japan', 5);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (163, 'Splendido', 'Toronto, Ontario', 'Canada', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (164, 'Concorde', 'Toronto, Ontario', 'Canada', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (165, 'Ritz', 'Toronto, Ontario', 'Canada', 4);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (166, 'Tulip Inn', 'Toronto, Ontario', 'Canada', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (167, 'Ariston', 'Toronto, Ontario', 'Canada', 3);
insert into HOTELS (ID, NAME, CITY, COUNTRY, STARS)
values (168, 'Grand Hotel', 'Toronto, Ontario', 'Canada', 5);
commit;
prompt 168 records loaded
prompt Enabling triggers for HOTELS...
alter table HOTELS enable all triggers;
set feedback on
set define on
prompt Done.
