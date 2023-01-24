-- select * from students
-- where stu_first_name like "Matt%"
-- ;

-- select * from students
-- where stu_id = 'stdX2000001008'
-- ;

-- delete from students 
-- where stu_id = 'stdX2000001008'
-- ;

-- select * from attendance where att_stu_id = 'stdX2000001008';
-- delete from attendance where att_stu_id = 'stdX2000001008';
-- delete from schedules where att_stu_id = 'stdX2000001008';
-- delete from transcripts where att_stu_id = 'stdX2000001008';

-- scanning for unneutralized orphans

-- perfect attendance
-- select * from students
-- left outer join attendance
-- on stu_id = att_stu_id
-- where att_stu_id is null


-- find orphaned attendances
-- select * from attendance
-- left outer join students
-- on att_stu_id = stu_id
-- where att_stu_id is null


select * from students 
where stu_last_name like 'Le%'
and stu_grade_level = '12'
;

select * from students
join attendance on stu_id = att_stu_id
where stu_last_name like 'Le%'
and stu_grade_level = '12'
;

select stu_id, stu_first_name, stu_last_name, count(*) from students
left outer join attendance on stu_id = att_stu_id
where stu_last_name like 'Le%'
and stu_grade_level = '12'
group by stu_id, stu_first_name, stu_last_name
;

-- Perfect attendance
select stu_id, stu_first_name, stu_last_name  from students
left outer join attendance on stu_id = att_stu_id
where stu_last_name like 'Le%'
and stu_grade_level = '12'
and att_stu_id is null
;

select count(*) from attendance
left outer join students
on att_stu_id = stu_id
where stu_id is null
;

-- delete from students where stu_last_name like 'Z%';


-- query should work but takes too long to execute
-- delete attendance
-- from attendance
-- left outer join students
-- on att_stu_id = stu_id
-- where stu_id is null
-- ;


select * from students
where stu_grade_level in ('01', '02')
;

-- using the in operator based on a subselect finds all students in an elementary school
select * from students
where stu_skl_id in (select skl_id from schools where skl_name like '%Elementary%')
;

-- finds all that are not in elemen
select * from students
where stu_skl_id not in (select skl_id from schools where skl_name like '%Elementary%')
;

delete from attendance
where att_stu_id not in (select stu_id from students)
;
