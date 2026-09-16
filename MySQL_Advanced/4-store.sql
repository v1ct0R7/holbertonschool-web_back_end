-- lists all bands with Glam rock as their main style
SELECT style, INFULL(split, 2024) - formed AS lifespan
FROM metal_bands
WHERE style = 'Glam rock' AS band_name
OREDER BY lifespan DESC;