select students.name, count(assistance_requests.*) as assistance_requests
from students
join assistance_requests on students.id=assistance_requests.student_id
where students.name='Elliot Dickinson'
group by students.name