define date_format='DD-MM-YYYY HH24:MI:SS'
define script_name='installCoolCars'

set feedback off;
set verify off;
set sqlformat ansiconsole;

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
@@types/car_cars_ref_t.sql
@@functions/get_cars.sql
@@functions/get_cars_piped.sql
@@views/car_ov_cars.sql

prompt
prompt End Script
prompt __________
select global_name "Database"
,      user "Schema"
,      to_char(sysdate, '&date_format.') "End Date"
from global_name
/
