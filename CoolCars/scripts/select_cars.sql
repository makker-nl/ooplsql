declare
  l_cars car_cars_t;
  l_rate number;
begin
  l_cars := get_cars;
  select car.daily_rate(sysdate - 365) daily_rate
  into l_rate
  from table(l_cars) car
  where license = '79-JF-VP';
  dbms_output.put_line( l_rate);
end;