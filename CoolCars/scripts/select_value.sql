declare 
  l_car car_car_t;
begin
  select value(t)
  into l_car
  from car_ov_cars t
  where license = '79-JF-VP';
  l_car.print;
end;