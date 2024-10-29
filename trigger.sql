/*drop trigger if exists t1;
delimiter $
create trigger t1
before insert on employee for each ROW
BEGIN
insert into employ values(new.emp_id, new.name, new.department, new.mobile);
end $
delimiter ;*/

drop trigger if exists check_age;
delimiter $
create trigger dept_trigger before insert on employee for each ROW
BEGIN
	if new.department = "cs" then 
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'ERROR: Dept is CS';
	end if;
	
end $
delimiter ;