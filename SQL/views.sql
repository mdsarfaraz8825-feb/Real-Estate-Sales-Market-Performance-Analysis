use real_estate_db;

CREATE VIEW vw_property_type_summary AS
SELECT
    Property_Type,
    COUNT(*) AS Total_Properties
FROM properties_cleaned
GROUP BY Property_Type;

SELECT * FROM vw_property_type_summary;

CREATE VIEW vw_avg_selling_price AS
SELECT
    Property_Type,
    AVG(Selling_Price) AS Avg_Selling_Price
FROM properties_cleaned
GROUP BY Property_Type;

select * from vw_avg_selling_price;

CREATE VIEW vw_city_sales AS
SELECT
    l.City,
    COUNT(s.Sale_ID) AS Total_Sales
FROM sales_cleaned s
JOIN locations_cleaned l
ON s.Property_ID = l.Property_ID
GROUP BY l.City;

select * from vw_city_sales;

CREATE VIEW vw_agent_sales AS
SELECT
    a.Agent_ID,
    a.Agent_Name,
    COUNT(s.Sale_ID) AS Total_Sales
FROM agents_cleaned a
LEFT JOIN sales_cleaned s
ON a.Agent_ID = s.Agent_ID
GROUP BY a.Agent_ID, a.Agent_Name;

SELECT * FROM vw_agent_sales;


CREATE VIEW vw_gender_commission AS
SELECT
    Gender,
    AVG(Commission_Rate) AS Avg_Commission
FROM agents_cleaned
GROUP BY Gender;

SELECT * FROM vw_gender_commission;


