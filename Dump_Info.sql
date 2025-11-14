SELECT domestic_sales, international_sales, movies.title
 FROM movies LEFT JOIN boxoffice ON movies.id = boxoffice.movie_id;


SELECT title, rating
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id
ORDER BY rating DESC;


SELECT DISTINCT building_name, role 
FROM buildings 
  LEFT JOIN employees
    ON building_name = building;

SELECT DISTINCT building_name
FROM buildings 
  LEFT JOIN employees
    ON building_name = building
WHERE role IS NULL;


SELECT 
    movies.title,
    (COALESCE(boxoffice.domestic_sales, 0) 
     + COALESCE(boxoffice.international_sales, 0)) / 1000000 
        AS combined_sales_millions
FROM movies
LEFT JOIN boxoffice
    ON movies.id = boxoffice.movie_id;


SELECT 
    movies.title, ROUND((boxoffice.rating / 10) * 100,2) AS Percent_Rating
FROM movies
LEFT JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

SELECT 
    movies.title
FROM movies
        WHERE movies.year % 2 = 0


SELECT *, AVG(employees.years_employed) FROM employees
    GROUP BY employees.role;
