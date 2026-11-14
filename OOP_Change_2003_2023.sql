SELECT
    Country_Name,
    ROUND(MAX(CASE WHEN year = 2003
        THEN OOP_percent END), 2) AS OOP_2003,
    ROUND(MAX(CASE WHEN year = 2023
        THEN OOP_percent END), 2) AS OOP_2023,
    ROUND(
        MAX(CASE WHEN year = 2023
            THEN OOP_percent END)
        -
        MAX(CASE WHEN year = 2003
            THEN OOP_percent END), 2
    ) AS Change_PP
FROM oop_healthcare
GROUP BY Country_Code, Country_Name
ORDER BY Change_PP ASC;