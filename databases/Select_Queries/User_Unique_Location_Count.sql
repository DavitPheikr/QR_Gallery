SELECT u.person_id, p.name AS user_name, 
COUNT(DISTINCT ph.location_id) AS unique_locations_count
FROM users u
JOIN people p ON u.person_id = p.person_id
JOIN Photos ph ON u.person_id = ph.user_id
GROUP BY u.person_id, p.name;

 