select assignment_submissions.duration, students.id, students.cohort_id
from assignment_submissions 
join students on assignment_submissions.student_id = students.id
where students.cohort_id <>