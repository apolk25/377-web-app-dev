update schools
set skl_level = 'K-4'
where skl_level = 'Elementary'
;

update schools
set skl_level = '5-8'
where skl_level = 'Middle'
;

update schools
set skl_level = '9-12'
where skl_level = 'High'
;

update schools
set skl_level = 'K-12'
where skl_level = 'All levels'
;