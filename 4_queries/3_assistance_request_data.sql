SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (completed_at - started_at) AS duration
    FROM assistance_requests ar
    JOIN teachers ON ar.teacher_id = teachers.id
    JOIN students ON ar.student_id = students.id
    JOIN assignments ON ar.assignment_id = assignments.id
    ORDER BY duration;
