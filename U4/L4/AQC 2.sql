/*Advanced Query Challenge 2: Create a SQL query which returns only cars whose LaunchPrice was less than £30,000. */
/* Only include the fields; BrandName, CountryOfOrigin, ModelName and LaunchPrice;sort by BrandName, in ascending order */

SELECT BrandName, CountryOfOrigin, ModelName, LaunchPrice
FROM CarManufacturers, CarModels
WHERE CarModels.LaunchPrice < 30000 AND CarModels.BrandID = CarManufacturers.BrandID
ORDER BY BrandName ASC;
