define date_format='DD-MM-YYYY HH24:MI:SS'
define script_name='install_c'

set feedback off;
set verify off;

Prompt
accept conn_str char prompt 'Enter database connect string: '
Prompt
accept system_pwd char prompt 'Enter system password: '

conn system/&system_pwd.@&conn_str.

col "Database"  format a30 new_value database
col "schema_name" format a30 new_value schema_name
col "Schema" format a30
col "Start Date" Format a30 new_value start_date
col "End Date"   Format a30 new_value End_date

select lower(decode( instr(gn.global_name, '.WORLD')
                   , 0, gn.global_name
                   , substr(gn.global_name, 1, instr(gn.global_name, '.WORLD') -1)
                   )
            ) database
,      lower(user) schema_name	
from global_name  gn
/

Prompt
Prompt Press Enter To Start
prompt ____________________
pause;

spool &script_name._for_&schema_name._at_&database..log

prompt
prompt Start Script
prompt ____________
select global_name "Database"
,      user "Schema"
,      to_char(sysdate, '&date_format.' ) "Start Date"
from global_name
/
Prompt
Prompt Actual Script
Prompt _____________
Prompt
Prompt drop users
Prompt __________
drop user hotel  cascade;
drop user car    cascade;
drop user trip   cascade;
prompt
prompt create users
Prompt ____________
create user hotel  identified by hotel
default tablespace users
temporary tablespace temp;
create user car    identified by car
default tablespace users
temporary tablespace temp;
create user trip   identified by trip
default tablespace users
temporary tablespace temp;
grant  connect,resource to hotel;
grant  connect,resource to car;
grant  connect,resource to trip;

prompt
prompt Fill schema hotel
prompt _________________
connect hotel/hotel@&conn_str.

@Hotels.sql
@RoomCustomers.sql
@RoomsAvailable.sql
@RoomsBooked.sql
@HotelsConstraints.sql

prompt
prompt Fill schema car
prompt ________________
connect car/car@&conn_str.

@Cars.sql
@CarCustomers.sql
@CarsAvailable.sql
@CarsBooked.sql
@CarsConstraints.sql

prompt
prompt Fill schema trip
prompt ________________
connect trip/trip@&conn_str.

@Components.sql
@Suppliers.sql
@SupplierComponents.sql
@TripCustomers.sql
@Trips.sql
@TripPeople.sql
@TripComponents.sql
@TripComponentPeople.sql
@TripsConstraints.sql

prompt
prompt End Script
prompt __________
select global_name "Database"
,      user "Schema"
,      to_char(sysdate, '&date_format.') "End Date"
from global_name
/
prompt
prompt Statistics
prompt ____________
select '&end_date.'   "Start Script"
,      '&start_date.' "End Script"
,      (to_date('&end_date.', '&date_format.') - to_date('&start_date.', '&date_format.'))*24*3600 "Duration (s)"
,      (to_date('&end_date.', '&date_format.') - to_date('&start_date.', '&date_format.'))*24*60 "Duration (min)"
,      (to_date('&end_date.', '&date_format.') - to_date('&start_date.', '&date_format.'))*24 "Duration (hr)"
from dual;

spool off;