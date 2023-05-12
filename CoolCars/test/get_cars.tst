PL/SQL Developer Test script 3.0
15
declare
  -- Non-scalar parameters require additional processing 
  l_cars car_cars_t;
begin
  -- Call the function
  l_cars := get_cars;
  if l_cars.count > 0
  then
    for l_idx in l_cars.first..l_cars.last
    loop
      dbms_output.put_line('Car '||l_idx||':');
      l_cars(l_idx).print;
    end loop;
  end if;  
end;
0
0
