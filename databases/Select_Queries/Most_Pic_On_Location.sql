SELECT
    l.Location_name,
    COUNT(p.idPhotos) AS photo_count
FROM
    Photos p
INNER JOIN
    Location l ON p.location_id = l.id_Location
GROUP BY
    l.Location_name
ORDER BY
    photo_count DESC
LIMIT 1;
