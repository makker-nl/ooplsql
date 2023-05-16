define date_format='DD-MM-YYYY HH24:MI:SS'
define script_name='installTrickyTrips'

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

prompt
prompt Fill schema trip
prompt ________________

@@Components.sql
@@Suppliers.sql
@@SupplierComponents.sql
@@TripCustomers.sql
@@Trips.sql
@@TripPeople.sql
@@TripComponents.sql
@@TripComponentPeople.sql
@@TripsConstraints.sql

prompt
prompt End Script
prompt __________
select global_name "Database"
,      user "Schema"
,      to_char(sysdate, '&date_format.') "End Date"
from global_name
/
