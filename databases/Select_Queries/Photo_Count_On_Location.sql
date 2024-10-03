SELECT l.id_Location, 
       l.Location_name, 
       COUNT(p.idPhotos) AS total_photos
FROM Location l
LEFT JOIN Photos p ON l.id_Location = p.location_id
GROUP BY l.id_Location, l.Location_name
LIMIT 0, 1000;
