SELECT phone, name, employee_id 
FROM people 
INNER JOIN employees ON people.person_id = employees.person_id 
LIMIT 0, 1000;
