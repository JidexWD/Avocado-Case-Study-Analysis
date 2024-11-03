SELECT * FROM avocado_shcema.avocado;


-- price trend over time 
SELECT 
    Year, AVG(AveragePrice) AS AvgPrice
FROM
    avocado
GROUP BY Year
ORDER BY Year;

-- price and volume by region 
-- that is average price  by region and total volume per region 
SELECT
	region,
    AVG(AveragePrice) AS AvgPrice,
    SUM(TotalVolume) AS TotalVolume
FROM 
	avocado
GROUP BY region
ORDER BY AvgPrice DESC;


-- comparsisim of organic versus conventional 
SELECT 
	type,
    AVG(AveragePrice) AS AvgPrice,
    SUM(TotalVolume) AS TotalVolume
FROM avocado
GROUP BY type;

-- Bag size distribution 
SELECT
	year,
    region,
    SUM(SmallBags) AS Small,
    SUM(LargeBags) AS Large,
    SUM(XLargeBags) AS XLarge
FROM avocado
GROUP BY year, region;
    
    


