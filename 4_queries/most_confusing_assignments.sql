select assignments.id, assignments.name, assignments.day, assignments.chapter, count(*) as total_requests
from assistance_requests
join assignments on assignment_id=assignments.id
group by assignments.id
order by total_requests desc
