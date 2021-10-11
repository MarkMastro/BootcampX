select cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
from cohorts
join students on cohorts.id=students.cohort_id
join assignment_submissions on assignment_submissions.student_id=students.id
group by cohorts.name
order by count(*) desc;
