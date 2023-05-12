create or replace function get_cars 
return car_cars_t is
  l_cars car_cars_t;
begin
  select cast(multiset(
    select license
    ,      category
    ,      year
    ,      brand
    ,      model
    ,      city
    ,      country
    from cars
  ) as car_cars_t)
  into l_cars
  from dual;
  return(l_cars);
exception
  when no_data_found then
    l_cars := car_cars_t();
    return l_cars;
end get_cars;
/
