SELECT sum(a.duration) as total_duration 
from assignment_submissions a JOIN students s 
ON a.student_id = s.id
where s.name = 'Ibrahim Schimmel';