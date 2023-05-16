define date_format='DD-MM-YYYY HH24:MI:SS'
define script_name='installHappyHotels'

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
prompt Fill schema hotel
prompt _________________

@@Hotels.sql
@@RoomCustomers.sql
@@RoomsAvailable.sql
@@RoomsBooked.sql
@@HotelsConstraints.sql

prompt
prompt End Script
prompt __________
select global_name "Database"
,      user "Schema"
,      to_char(sysdate, '&date_format.') "End Date"
from global_name
/