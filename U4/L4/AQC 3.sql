/* Advanced Query Challenge 3: Create a SQL query which returns only cars whose CountryOfOrigin is Germany. */
/* Only include the fields; BrandName, CountryOfOrigin and ModelName; sort by ModelName in ascending order */

SELECT BrandName, CountryOfOrigin, ModelName
FROM CarManufacturers, CarModels
WHERE CarManufacturers.CountryOfOrigin = 'Germany' AND CarModels.BrandID = CarManufacturers.BrandID
ORDER BY ModelName ASC;
