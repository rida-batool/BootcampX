select name, email, phone 
from students 
where github IS NULL and end_date IS NOT NULL;