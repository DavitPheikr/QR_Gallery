SELECT
    l.Location_name
FROM
    Location l
LEFT JOIN
    Photos p ON l.id_Location = p.location_id
WHERE
    p.idPhotos IS NULL;
