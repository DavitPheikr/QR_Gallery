SELECT COUNT(e.person_id) AS total_support_employees
FROM employees e
JOIN Support s ON e.person_id = s.person_id;
