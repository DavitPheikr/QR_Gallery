SELECT p.name AS person_name, p.email AS person_email, l.Location_name AS location_name, ph.upload_date
FROM `people` p
JOIN `Selfie` s ON p.person_id = s.photos_id
JOIN `Photos` ph ON s.photos_id = ph.idPhotos
JOIN `Location` l ON ph.location_id = l.id_Location;