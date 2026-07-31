use real_estate_db;


SELECT
Gender,
    COUNT(Agent_ID) AS Total_Agents,
    AVG(Commission_Rate) AS Average_Commission,
    MIN(Commission_Rate) AS Minimum_Commission,
    MAX(Commission_Rate) AS Maximum_Commission
FROM agents_cleaned
GROUP BY Gender;

SELECT 
   Marital_Status,
   COUNT(Customer_ID) AS Total_Customers
FROM customers_cleaned
GROUP BY Marital_Status;


SELECT
    Property_Type,
    COUNT(Property_ID) AS Total_Properties,
    AVG(Listing_Price) AS Average_Listing_Price,
    AVG(Selling_Price) AS Average_Selling_Price
FROM properties_cleaned
GROUP BY Property_Type;


SELECT
    Gender,
    COUNT(Agent_ID) AS Agent_Count,
    GROUP_CONCAT(Agent_Name) AS Agent_List,
    AVG(Commission_Rate) AS Avg_Commission
FROM agents_cleaned
GROUP BY Gender;