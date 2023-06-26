USE world;

-- SELECT COUNT(CountryCode) FROM city WHERE CountryCode='USA';
-- SELECT Name, SUM(Population), LifeExpectancy FROM country WHERE Code='ARG';
-- SELECT Name, LifeExpectancy FROM country WHERE LifeExpectancy IS NOT NULL ORDER BY LifeExpectancy DESC LIMIT 1;

-- SELECT Code, Name, LifeExpectancy
-- FROM country
-- WHERE Code=(
	-- SELECT CountryCode
	-- FROM city
    -- WHERE ID = 1
-- );

-- DROP VIEW IF EXISTS africa; 
-- CREATE VIEW african
-- AS
	-- SELECT Code, Name, Continent
    -- FROM country
    -- WHERE Continent='Africa'
-- ;

-- SELECT * FROM african;

SELECT c.Name, c.Continent, c.Capital, ci.CountryCode, ci.Name
FROM country c
JOIN city ci ON c.Capital=ci.ID WHERE c.Name='Spain';

SELECT co.Name, co.Region, cl.Language
FROM countrylanguage cl
JOIN country co ON cl.CountryCode=co.Code WHERE Region='Southeast Asia';

SELECT Name FROM city
WHERE Name LIKE 'F%'
LIMIT 25;

SELECT COUNT(ci.Name)
FROM city ci
JOIN country co ON ci.CountryCode=co.Code
WHERE co.Name='China';

SELECT Name, Population FROM country
WHERE Population IS NOT NULL
ORDER BY Population
LIMIT 1;

SELECT DISTINCT COUNT(Name) FROM country;

SELECT Name FROM country ORDER BY SurfaceArea DESC LIMIT 10;

SELECT ci.Name, ci.Population 
FROM country co
JOIN city ci ON co.Code=ci.CountryCode WHERE co.Name='Japan'
ORDER BY ci.Population DESC LIMIT 5;