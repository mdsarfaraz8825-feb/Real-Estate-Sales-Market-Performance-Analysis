use real_estate_db;

select 
    s.Sale_ID,
    s.Sale_Date,
    
    a.Agent_ID,
    a.Agent_Name,
    a.Gender,
    a.Commission_Rate,
    
    c.Customer_ID,
    c.Customer_Name,
    c.Gender as Customer_Gender,
    c.Marital_Status,
    
    p.Property_ID,
    p.Property_Type,
    p.Property_Status,
    p.Selling_Price,
    
    l.City,
    l.State,
    
    am.Gym,
    am.Security,
    am.Lift,
    am.Power_Backup
    
From sales_cleaned s

join agents_cleaned a
on s.Agent_ID = a.Agent_ID

join customers_cleaned c
on s.Customer_ID = c.Customer_ID

join properties_cleaned p
on s.Property_ID = p.Property_ID

join locations_cleaned l
on p.Property_ID = l.Property_ID

left join amenities_cleaned am
on p.Property_ID = am.Property_ID;