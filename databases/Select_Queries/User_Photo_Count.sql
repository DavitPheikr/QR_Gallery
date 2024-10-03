SELECT p.user_id, 
	COUNT(p.idPhotos) AS total_photos
FROM `Photos` p
GROUP BY p.user_id;