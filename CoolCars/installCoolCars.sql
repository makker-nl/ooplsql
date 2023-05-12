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

--Prompt
--Prompt Press Enter To Start
--prompt ____________________
--pause;

--spool &script_name._for_&schema_name._at_&database..log

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
prompt Install Cool Cars objects
prompt ________________


@@tables/Cars.sql
@@tables/CarCustomers.sql
@@tables/CarsAvailable.sql
@@tables/CarsBooked.sql
@@tables/CarsConstraints.sql
@@types/car_car_t.sql
@@types/car_cars_t.sql


prompt
prompt End Script
prompt __________
select global_name "Database"
,      user "Schema"
,      to_char(sysdate, '&date_format.') "End Date"
from global_name
/


spool off;
