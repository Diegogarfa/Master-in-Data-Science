SELECT t1.country_name, npop, nairports, nairports/npop AS pc

FROM 
    (SELECT country_name, SUM(population) AS npop
    FROM optd_por_public
    WHERE population IS NOT NULL
    GROUP BY country_name) AS t1,
    
    (SELECT country_name, COUNT(*) AS nairports
    FROM optd_por_public
    WHERE location_type='A' OR location_type='CA'
    GROUP BY country_name) AS t2

WHERE t1.country_name = t2.country_name AND npop >0

ORDER By pc LIMIT 10;