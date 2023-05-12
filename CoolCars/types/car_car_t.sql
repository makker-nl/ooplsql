create or replace type car_car_t as object
(
  -- Attributes
     license   varchar2(10)                     
  ,  category  number(1)     
  ,  year      number(4)     
  ,  brand     varchar2(20)  
  ,  model     varchar2(30)  
  ,  city      varchar2(30)
  ,  country   varchar2(30)
  -- Member functions and procedures
  , constructor function car_car_t(p_license in varchar2)
    return self as result
  , member function daily_rate(p_date date) 
    return number
  , map member function car_size return number
  , member procedure print
)
/
create or replace type body car_car_t is
  
  -- Member procedures and functions
  constructor function car_car_t(p_license in varchar2)
    return self as result
  is
  begin
    select license
    ,      category
    ,      year
    ,      brand
    ,      model
    ,      city
    ,      country
    into   self.license
    ,      self.category
    ,      self.year
    ,      self.brand
    ,      self.model
    ,      self.city
    ,      self.country
    from cars
    where license = p_license;
    return;
  end;
  member function daily_rate(p_date date)
  return number
  is
    l_rate number;
    cursor c_cae( b_license in varchar2
                , b_date    in date)
    is select cae.dailyrate
       from   carsavailable cae
       where  b_date between cae.date_from and nvl(cae.date_to, b_date)
       and    cae.car_license = b_license
       order by cae.date_from;
    r_cae c_cae%rowtype;
  begin
    open c_cae( b_license => self.license
              , b_date    => p_date);
    fetch c_cae into r_cae;
    close c_cae;
    l_rate := r_cae.dailyrate;
    return l_rate;
  end;
  
  map member function car_size return number is
  begin
    return 6 - category; -- or some more complex calculation
  end;
  
  member procedure print
  is
    l_daily_rate number;
  begin
    dbms_output.put_line( 'License   : '||self.license);
    dbms_output.put_line( 'Category  : '||self.category);
    dbms_output.put_line( 'Year      : '||self.year);
    dbms_output.put_line( 'Brand     : '||self.brand);
    dbms_output.put_line( 'Model     : '||self.model);
    dbms_output.put_line( 'City      : '||self.city);
    dbms_output.put_line( 'Country   : '||self.country);
    l_daily_rate := daily_rate(p_date => sysdate);
    if l_daily_rate is not null
    then
      dbms_output.put_line('Daily Rate: '||l_daily_rate);
    else
      dbms_output.put_line('No cars available');
    end if;
  end;
  
end;
/
