SELECT sum(a.duration) as total_duration from assignment_submissions a 
JOIN students s ON s.id = a.student_id
JOIN cohorts c ON c.id = s.cohort_id
where c.name = 'FEB12';
