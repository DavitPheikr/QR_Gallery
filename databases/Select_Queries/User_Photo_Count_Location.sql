SELECT p.idPhotos, p.upload_date, l.Location_name
FROM `Photos` p
JOIN `Location` l ON p.location_id = l.id_Location;