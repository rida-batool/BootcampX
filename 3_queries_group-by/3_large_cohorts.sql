select cohorts.name, count(students.id) as student_count from cohorts 
join students ON students.cohort_id = cohorts.id
group by cohorts.name
having count(students.id) >= 18
order by student_count asc;
