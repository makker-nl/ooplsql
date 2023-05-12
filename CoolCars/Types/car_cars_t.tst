PL/SQL Developer Test script 3.0
18
declare 
  l_cars car_cars_t;
begin
  l_cars := car_cars_t();
  for r_car in (select license from cars)
  loop
    l_cars.extend;
    l_cars(l_cars.count) := car_car_t(r_car.license);
  end loop;
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
