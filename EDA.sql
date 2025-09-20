select * from mxmh_survey_results
;

select row_number() over() from mxmh_survey_results;

describe mxmh_survey_results;


ALTER TABLE mxmh_survey_results 
MODIFY COLUMN BPM int;

ALTER TABLE mxmh_survey_results
MODIFY COLUMN Age INT ;


describe mxmh_survey_results;

select * from mxmh_survey_results;


select `Hours per day` from mxmh_survey_results
where `Hours per day` > 24 or 
`Hours per day` < 0;


select max(BPM) from mxmh_survey_results
;

select BPM from mxmh_survey_results
order by BPM desc;

set sql_safe_updates = 0;

update mxmh_survey_results
set BPM = '0'
where BPM > 100000000;

select max(BPM) from mxmh_survey_results
;

set sql_safe_updates = 1;



select distinct `Fav genre` 
from mxmh_survey_results
order by `Fav genre`;

select distinct `Primary streaming service` 
from mxmh_survey_results
order by `Primary streaming service`;

select distinct `Hours per day` 
from mxmh_survey_results
order by `Hours per day`;

select distinct `While working` 
from mxmh_survey_results
order by `While working`;

select distinct `Instrumentalist` 
from mxmh_survey_results
order by `Instrumentalist`;


select distinct `Composer` 
from mxmh_survey_results
order by `Composer`;

select distinct `Exploratory` 
from mxmh_survey_results
order by `Exploratory`;

select distinct `Foreign languages` 
from mxmh_survey_results
order by `Foreign languages`;

select distinct `Music effects` 
from mxmh_survey_results
order by `Music effects`;

select * from mxmh_survey_results;
select *, row_number() over() from mxmh_survey_results;


select avg(Age), max(Age), min(age) from mxmh_survey_results
where Age > 0;

select `primary streaming service`, count(`primary streaming service`) from mxmh_survey_results
group by `primary streaming service`;


select avg(`Hours per day`), max(`Hours per day`), min(`Hours per day`)  from mxmh_survey_results;

select avg(Anxiety), max(Anxiety), min(Anxiety)  from mxmh_survey_results;
select avg(Depression), max(Depression), min(Depression)  from mxmh_survey_results;
select avg(Insomnia), max(Insomnia), min(Insomnia)  from mxmh_survey_results;
select avg(OCD), max(OCD), min(OCD)  from mxmh_survey_results;

select * from mxmh_survey_results;

select `fav genre`, count(`fav genre`) as `sum` from mxmh_survey_results
group by `fav genre`
order by `sum` desc;


select `while working`, `fav genre`, count(`fav genre`) as fav_count from mxmh_survey_results
where `while working` = 'Yes'
group by `fav genre`
order by fav_count desc;

select count(`While working`) from mxmh_survey_results
where `While working` = 'Yes';

select   `fav genre`, avg(OCD), avg(Anxiety), avg(Depression), avg(Insomnia) from mxmh_survey_results
group by `fav genre`;

