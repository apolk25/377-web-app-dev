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

select * from students
left outer join attendance
on stu_id = att_stu_id
where att_stu_id is null