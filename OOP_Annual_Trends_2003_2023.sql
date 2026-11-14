SELECT
    year,
    Country_Code,
    Country_Name,
    ROUND(OOP_percent, 2) AS OOP_Percent
FROM oop_healthcare
ORDER BY year ASC, Country_Name ASC;