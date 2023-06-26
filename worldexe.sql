USE world;

-- SELECT COUNT(CountryCode) FROM city WHERE CountryCode='USA';
-- SELECT Name, SUM(Population), LifeExpectancy FROM country WHERE Code='ARG';
SELECT Name, LifeExpectancy
FROM country
WHERE LifeExpectancy IS NOT NULL
ORDER BY LifeExpectancy DESC
LIMIT 1;