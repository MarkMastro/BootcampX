select students.name as student, avg(assignment_submissions.duration) as average_submission_time, avg(assignments.duration) as average_assignment_time
from students
join assignment_submissions on students.id=assignment_submissions.student_id
join assignments on assignments.id=assignment_submissions.assignment_id 
where students.end_date is null
group by student
having avg(assignment_submissions.duration)< avg(assignments.duration)
order by avg(assignment_submissions.duration) asc

