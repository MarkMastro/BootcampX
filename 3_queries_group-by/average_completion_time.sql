select students.name, avg(assignment_submissions.duration) as average_submission_time
from students
join assignment_submissions on students.id=assignment_submissions.student_id
join assignments 
where students.end_date is null
group by students.name
order by avg(assignment_submissions.duration) desc