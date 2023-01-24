-- Inserting records into a table

insert into students (stu_id, stu_first_name, stu_last_name, stu_grade_level)
values ('526WATERST', 'Leyton', 'Siew', '1')
;
select * from students
where stu_id = '526WATERST'