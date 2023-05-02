SELECT c.name, avg(completed_at-started_at) AS average_longest_cohort_assistance_duration
FROM assistance_requests 
join students s on s.id = assistance_requests.student_id
join cohorts c on c.id = s.cohort_id
group by c.name
order by average_longest_cohort_assistance_duration desc
limit 1;
