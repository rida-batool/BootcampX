SELECT count(a.*), s.name from assistance_requests a
join students s on s.id = a.student_id
where s.name = 'Elliot Dickinson'
group by s.name;