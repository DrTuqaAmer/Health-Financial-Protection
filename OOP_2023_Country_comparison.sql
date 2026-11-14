SELECT
    Country_Name,
    ROUND(OOP_percent, 2) AS OOP_2023
FROM oop_healthcare
WHERE year = 2023
ORDER BY OOP_percent DESC;