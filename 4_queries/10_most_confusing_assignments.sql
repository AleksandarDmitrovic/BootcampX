SELECT asg.id, name, day, chapter, COUNT(ar.assignment_id) AS total_requests
    FROM assignments asg
    JOIN assistance_requests ar ON asg.id = ar.assignment_id
    GROUP BY asg.id
    ORDER BY total_requests DESC;
