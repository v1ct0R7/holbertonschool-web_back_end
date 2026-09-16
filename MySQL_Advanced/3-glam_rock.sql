-- lists all bands with Glam rock as their main style
SELECT DISTINCT style FROM metal_bands WHERE style LIKE '%Glam%'
ORDER BY lifespan DESC, band_name ASC;