SELECT s.name, s.start_date AS student_start_date, cohorts.name as cohort_name, cohorts.start_date as cohort_start_date
from students s JOIN cohorts ON cohort_id = cohorts.id 
WHERE cohorts.start_date != s.start_date
order by cohorts.start_date;