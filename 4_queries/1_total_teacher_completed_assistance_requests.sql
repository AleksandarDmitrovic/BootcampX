SELECT COUNT(ar.*) AS total_assistances, teachers.name AS name
    FROM assistance_requests ar
    JOIN teachers ON ar.teacher_id = teachers.id
    WHERE teachers.name = 'Waylon Boehm'
    GROUP BY teachers.name;
