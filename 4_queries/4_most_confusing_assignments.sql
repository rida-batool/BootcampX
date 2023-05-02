select a.id, a.name, a.day, a.chapter, count(r.*) as total_requests
from assignments a
join assistance_requests r on r.assignment_id = a.id
group by a.id
order by total_requests desc;