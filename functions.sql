drop function if exists f1;
delimiter $
create function f1(num1 int, num2 int) returns int
deterministic
BEGIN
return num1+num2;
end $
delimiter ;

drop procedure if exists p1;
delimiter $
create procedure p1()
BEGIN
select f1(10,10) as sum1;
end $
delimiter ;

