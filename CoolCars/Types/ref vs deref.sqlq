declare
 l_cars car_cars_ref_t;
 l_car  car_car_t;
begin
  -- Bouw collectie met references op
  select cast(multiset(select make_ref( car_ov_cars
                                      , cae.car_license
                                      )
                       from carsavailable cae) as car_cars_ref_t)
  into l_cars
  from dual;
  -- Verwerk collection
  if l_cars.count > 0
  then
    for l_idx in l_cars.first..l_cars.last
    loop
      dbms_output.put_line( 'Car '||l_idx||': ');
      -- Haal object-value op basis van reference op
      select deref(l_cars(l_idx))   
      into l_car
      from dual;
      -- Druk object af
      l_car.print;
    end loop;
  end if;
end;                              