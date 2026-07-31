use real_estate_db;

SELECT
SUM(Selling_Price) AS Total_Revenue
FROM properties_cleaned;

SELECT
COUNT(*) AS Total_Sales
FROM sales_cleaned;

SELECT
AVG(Selling_Price) AS Average_Selling_price
FROM properties_cleaned;

SELECT 
COUNT(*) AS Total_Agents
FROM  agents_cleaned;

SELECT
COUNT(*) AS Total_Customers
FROM customers_cleaned;


SELECT
AVG(Commission_Rate) AS Average_Commission_Rate
FROM agents_cleaned;

SELECT
Agent_Name,
Commission_Rate
FROM agents_cleaned
ORDER BY Commission_Rate DESC
LIMIT 10;
   
   
SELECT
Property_Type,
COUNT(*) AS Total
FROM properties_cleaned
GROUP BY Property_Type
ORDER BY Total DESC;


SELECT
l.City,
COUNT(s.Sale_ID) AS Total_Sales,
SUM(p.Selling_Price) AS Revenue
FROM sales_cleaned s
JOIN properties_cleaned p
ON s.Property_ID=p.Property_ID

JOIN locations_cleaned l
ON p.Property_ID=l.Property_ID

GROUP BY l.City
ORDER BY Revenue DESC;