-- create database league;
use league;
drop table teams;

CREATE TABLE `league`.`teams` (
  `tms_id` INT NOT NULL AUTO_INCREMENT,
  `tms_city` VARCHAR(45) NOT NULL,
  `tms_name` VARCHAR(45) NOT NULL,
  `tms_coach` VARCHAR(100) NULL,
  `tms_logo` BLOB NULL,
  PRIMARY KEY (`tms_id`),
  UNIQUE INDEX `tms_name_UNIQUE` (`tms_name` ASC) VISIBLE);


insert into teams (tms_city, tms_name) value ('Hanover', 'Hawks');
insert into teams (tms_city, tms_name) value ('Scituate', 'Sailors');
insert into teams (tms_city, tms_name) value ('Hingham', 'Harbormen');
insert into teams (tms_city, tms_name) value ('Duxbury', 'Dragons');
insert into teams (tms_id, tms_city, tms_name) value (11, 'Weymouth', 'Wildcats');
insert into teams (tms_city, tms_name) value ('Abington', 'Green Wave');


select * from teams;
select * from teams where substr(tms_city, 1, 1) = substr(tms_name, 1, 1);
CREATE TABLE league.players (
  plr_id INT NOT NULL AUTO_INCREMENT,
  plr_tms_id INT NOT NULL,
  plr_first_name VARCHAR(45) NOT NULL,
  plr_last_name VARCHAR(45) NOT NULL,
  PRIMARY KEY (`plr_id`),
  INDEX plr_tms_id_FK (plr_tms_id ASC) VISIBLE);

insert into players (plr_tms_id, plr_first_name, plr_last_name) value (1, "Garfield", "Lasagna");
insert into players (plr_tms_id, plr_first_name, plr_last_name) value (1, "Ivan", "Siew");
insert into players (plr_tms_id, plr_first_name, plr_last_name) value (4, "Phillip", "Johnstonian");
insert into players (plr_tms_id, plr_first_name, plr_last_name) value (12, "Jesus", "Abington");

select * from teams
left outer join players on plr_tms_id = tms_id
where plr_id is null


  
  