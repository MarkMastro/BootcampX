select teachers.name as teacher,students.name as student, assignments.name as assignment, (assistance_requests.completed_at-assistance_requests.started_at) as duration
from students
join assistance_requests on assistance_requests.student_id=students.id
join teachers on teachers.id=assistance_requests.teacher_id
join assignments on assignments.id=assistance_requests.assignment_id
order by duration asc;