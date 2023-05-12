create or replace type car as object
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
  , constructor function car(p_license in varchar2)
    return self as result
  , member procedure print
)
/
create or replace type body car is
  
  -- Member procedures and functions
  constructor function car(p_license in varchar2)
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
  end;
  member procedure print
  is
  begin
    dbms_output.put_line( 'License : '||self.license);
    dbms_output.put_line( 'Category: '||self.category);
    dbms_output.put_line( 'Year    : '||self.year);
    dbms_output.put_line( 'Brand   : '||self.brand);
    dbms_output.put_line( 'Model   : '||self.model);
    dbms_output.put_line( 'City    : '||self.city);
    dbms_output.put_line( 'Country : '||self.country);
  end;
  
end;
/
