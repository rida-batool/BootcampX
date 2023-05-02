SELECT count(a.completed_at), t.name from assistance_requests a
join teachers t on t.id = a.teacher_id
where t.name = 'Waylon Boehm'
group by t.name;