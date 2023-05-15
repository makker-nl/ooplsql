define date_format='DD-MM-YYYY HH24:MI:SS'
define script_name='install_c'

set feedback off;
set verify off;
SET sqlformat ansiconsole;

column "Database"  format a30 new_value database
column "schema_name" format a30 new_value schema_name
column "Schema" format a30
column "Start Date" Format a30 new_value start_date
column "End Date"   Format a30 new_value End_date

select lower(decode( instr(gn.global_name, '.WORLD')
                   , 0, gn.global_name
                   , substr(gn.global_name, 1, instr(gn.global_name, '.WORLD') -1)
                   )
            ) database
,      lower(user) schema_name
from global_name  gn
/

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


prompt
prompt Drop Cool Cars objects
prompt ________________



drop table CarCustomers purge;
drop table CarsAvailable purge;
drop table CarsBooked purge;
drop table Cars purge;
drop type car_car_t force;
drop type car_cars_t force;
drop type car_cars_ref_t  force;
drop function get_cars;
drop function get_cars_piped;
drop view car_ov_cars;

prompt
prompt End Script
prompt __________
select global_name "Database"
,      user "Schema"
,      to_char(sysdate, '&date_format.') "End Date"
from global_name
/
