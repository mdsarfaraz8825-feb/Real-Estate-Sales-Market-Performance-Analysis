use real_estate_db;

SELECT
    Agent_ID,
    Agent_Name,
    Experience_Years,
    SUM(Experience_Years)
    OVER(ORDER BY Experience_Years) AS Running_Total
FROM agents_cleaned;


SELECT
    Agent_ID,
    Agent_Name,
    Experience_Years,
    RANK() OVER(ORDER BY Experience_Years DESC) AS Experience_Rank
FROM agents_cleaned;

SELECT
    Agent_ID,
    Agent_Name,
    Experience_Years,
    DENSE_RANK() OVER(ORDER BY Experience_Years DESC) AS Dense_Ranks
FROM agents_cleaned;

SELECT
    Agent_Name,
    Experience_Years,
    LAG(Experience_Years)
    OVER(ORDER BY Experience_Years) AS Previous_Experience
FROM agents_cleaned;

SELECT
    Agent_Name,
    Experience_Years,
    LEAD(Experience_Years)
    OVER(ORDER BY Experience_Years) AS Next_Experience
FROM agents_cleaned;

SELECT
    Property_ID,
    Construction_Year,
    SUM(Construction_Year)
    OVER(ORDER BY Construction_Year) AS Running_Total
FROM properties_cleaned;

SELECT
    Property_ID,
    Property_Name,
    Construction_Year,
    RANK() OVER(ORDER BY Construction_Year DESC) AS Year_Rank
FROM properties_cleaned;

SELECT
    Property_ID,
    Property_Name,
    Construction_Year,
    LAG(Construction_Year)
    OVER(ORDER BY Construction_Year) AS Previous_Year
FROM properties_cleaned;

SELECT
    Property_ID,
    Property_Name,
    Construction_Year,
    LEAD(Construction_Year)
    OVER(ORDER BY Construction_Year) AS Next_Year
FROM properties_cleaned;