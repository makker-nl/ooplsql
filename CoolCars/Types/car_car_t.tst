PL/SQL Developer Test script 3.0
9
-- Created on 22-8-2005 by MAKKER 
declare 
  -- Local variables here
  l_car car_car_t;
begin
  -- Test statements here
  l_car := car_car_t(:license);
  l_car.print;
end;
1
license
1
79-JF-VP
5
0
