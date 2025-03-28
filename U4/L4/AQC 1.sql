/* Advanced Query Challenge 1: Create a SQL query which returns only car models that have been manufactured by Rolls Royce. */
/* Only include the fields; BrandName, CountryOfOrigin, ModelName and LaunchPrice; sort by BrandName, in ascending order */

SELECT BrandName, CountryOfOrigin, ModelName, LaunchPrice
FROM CarManufacturers, CarModels
WHERE CarModels.BrandID = 10 AND CarManufacturers.BrandID = 10
ORDER BY BrandName ASC;
