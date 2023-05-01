SELECT students.name, avg(a.duration) as average_assignment_duration, avg(s.duration) as average_estimated_duration
from students 
JOIN assignment_submissions a ON a.student_id = students.id
JOIN assignments s ON s.id = a.assignment_id
where students.end_date IS NULL
group by students.name
having avg(a.duration) < avg(s.duration)
order by average_assignment_duration asc;