SELECT COUNT(ar.*) AS total_assistances, students.name
    FROM assistance_requests ar
    JOIN students ON ar.student_id = students.id
    WHERE name = 'Elliot Dickinson'
    GROUP BY name;