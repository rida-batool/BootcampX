select students.name as student, avg(a.duration) as average_assignment_duration
from assignment_submissions a 
JOIN students ON students.id = a.student_id
where students.end_date IS NULL
group by students.name
order by avg(a.duration) desc;