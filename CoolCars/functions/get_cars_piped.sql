create or replace function get_cars_piped(p_where in varchar2 default null)
return car_cars_t 
pipelined
is
  l_car car_car_t;
  type t_car is record
  ( license cars.license%type);
  type t_cars_cursor  is ref cursor;
  c_car t_cars_cursor;
  r_car t_car;
  l_query varchar2(32767);
begin
  l_query := 'Select license from cars '||p_where;
  open c_car for l_query;
  fetch c_car into r_car;
  while c_car%found
  loop
    l_car := car_car_t(p_license => r_car.license);
    pipe row(l_car);
    fetch c_car into r_car;
  end loop;
  close c_car;
  return;
end get_cars_piped;
/
