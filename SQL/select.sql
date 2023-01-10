-- =================================================================================================
-- SQL SELECT Quiz
--
-- Each question is worth 3 points for a total of 24 possible points. The bonus question is also
-- worth 3 points.
-- =================================================================================================

-- *************************************************************************************************
-- #1: Write a query to return the homeroom number, first name, last name, and gender of
--     all active students in first grade; sort the results by homeroom, last name, first name.
-- *************************************************************************************************

-- select stu_homeroom as 'Homeroom', stu_first_name as 'First Name', stu_last_name as 'Last Name', stu_gender  as 'Gender' from students
-- where stu_grade_level = 01
-- and stu_status = "Active"
-- order by stu_homeroom desc, stu_last_name, stu_first_name


-- *************************************************************************************************
-- #2: Update the query from question 1 to include each student's school's name as the
--     first column; sort the results first by the school name than all the other sort fields
--     listed in question 1.
-- *************************************************************************************************

-- select skl_name as 'School', stu_homeroom as 'Homeroom', stu_first_name as 'First Name', stu_last_name as 'Last Name', stu_gender  as 'Gender' from students
-- join schools on skl_id = stu_skl_id
-- where stu_grade_level = 01
-- and stu_status = "Active"
-- order by skl_name, stu_homeroom desc, stu_last_name, stu_first_name



-- *************************************************************************************************
-- #3: Write a query to find the number of active students in homeroom 04 at Hancock Elementary
--     School.
-- *************************************************************************************************

-- select count(*) as "Count" from students
-- join schools on stu_skl_id = skl_id
-- where stu_status = "Active"
-- and stu_homeroom = "04"
-- and skl_name = "Hancock Elementary School"


-- *************************************************************************************************
-- #4: Write a query to find the first and last name of the homeroom teacher for the students in
--     question 3.
-- *************************************************************************************************

-- SELECT tch_first_name, tch_last_name
-- FROM students
-- JOIN schools ON stu_skl_id = skl_id
-- JOIN teachers ON stu_homeroom = tch_homeroom AND stu_homeroom = 04
-- WHERE stu_status = "Active"
-- AND skl_name = "Hancock Elementary School"

-- *************************************************************************************************
-- #5: Write a query to list the active students at Washington High School who have either Kristen
--     McDonnell or Laura Giordano as a guidance counselor. Show columns for: counselor, grade
--     level, first name, and last name; sort the results by counselor, grade level, last name,
--     first name.
-- *************************************************************************************************

-- select stu_counselor, stu_grade_level, stu_first_name, stu_last_name from students
-- join schools on stu_skl_id = skl_id
-- where stu_status = "Active"
-- and skl_name = "Washington High School"
-- and stu_counselor in ('McDonnell, Kristen', 'Giordano, Laura')

-- *************************************************************************************************
-- #6: Write a query to list the transcript records for student Grace Brewer since 2016. Show
--     columns for the school year, course name, final grade, and credits; sort the results by
--     school year and course name.
-- *************************************************************************************************

-- select trn_school_year, trn_course, trn_final, trn_credit from transcripts
-- join students on stu_id = trn_stu_id
-- where stu_first_name = "Grace"
-- and stu_last_name = "Brewer"
-- and trn_school_year >= 2016

-- *************************************************************************************************
-- #7: Write a query to list the classes taught by Catherine Bennett (exclude any courses named
--     'DST'). Show the course name, section number, meeting times, and room number; sort the
--     results by meeting time.
-- *************************************************************************************************

-- select cls_course, cls_section, cls_meeting_times, cls_room from classes
-- join teachers on tch_id = cls_tch_id
-- where tch_first_name = "Catherine"
-- and tch_last_name = "Bennett"
-- and cls_course != "DST"


-- *************************************************************************************************
-- BONUS: Write a query to list the rosters for each of Catherine Bennett's classes. Show the
--        course name, section number, and the student's first/last names. Sort the results by
--        those same columns.
-- *************************************************************************************************

-- select cls_course, cls_section, stu_first_name, stu_last_name from classes
-- join teachers on tch_id = cls_tch_id
-- join schedules on ssc_cls_id = cls_id
-- join students on stu_id = ssc_stu_id 
-- where tch_first_name = "Catherine"
-- and tch_last_name = "Bennett"
-- and cls_course != "DST"

-- bonus bonus 

select cls_course, cls_section, cls_meeting_times, cls_room, count(stu_first_name) from classes
join teachers on tch_id = cls_tch_id
join schedules on ssc_cls_id = cls_id
join students on stu_id = ssc_stu_id 
where tch_first_name = "Catherine"
and tch_last_name = "Bennett"
and cls_course != "DST"
group by cls_course, cls_section, cls_meeting_times, cls_room