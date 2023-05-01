SELECT cohorts.name, count(a.*) from cohorts
join students ON students.cohort_id = cohorts.id
join assignment_submissions a ON a.student_id = students.id
where a.submission_date IS NOT NULL
group by cohorts.name
order by count(a.*) desc;