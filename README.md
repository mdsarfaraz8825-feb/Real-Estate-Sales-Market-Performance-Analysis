# Real Estate Sales & Market Performance Analysis 

  

## Objective 

Analyze property sales, agent performance, customer segments, 

and market trends using Python, SQL and Power BI. 

  

## Datasets 

- agents 

- customers 

- properties 

- sales 

- locations 

- amenities 

  

## Tools 

Python | Pandas | SQL | Power BI | Excel 

  

## Key KPIs 

- Total Sales 

- Properties Sold 

- Average Selling Price 

- Total Agents 

- Total Commission 

  

## Dashboard Pages 

1. Overview 

2. Trends 

3. Segments 

  

## Key Findings 

Revenue is overstated by ~15% if read as booked sales 

Of the 25,000 sales records, 21,244 (85%) are Completed, 2,512 (10%) are Pending, and 1,244 (5%) are Cancelled. Because the dashboard's Total_Sales sums all three, the headline 458.32bn overstates realized revenue by roughly 70bn. 

 

The year-over-year “decline” in 2026 is a partial-year artifact, not a slowdown 

Sale_Date in the data runs only through 14 July 2026. Through that date, 2026 already shows 8,129 transactions versus 8,342 for the whole of 2025 — effectively on pace to match or exceed last year, not decline. 

 

The Construction_Year chart is sorted by value, creating a false decay trend 

On the dashboard, Construction_Year is ordered 2021, 2009, 2020, 2000, 2002… (by sales value, descending) rather than chronologically, which visually reads as a steady decline from ~19.4bn to ~17.7bn. Re-aggregated in chronological order, annual sales by construction year are actually flat and noisy, all sitting in a ~19.5–23.2bn band with no real trend. 

 

 Zero of 500 agents are meeting their individual Sales_Target 

Completed sales per agent range from 22 to 60 (average 42.5), yet when checked against each agent's own Sales_Target field, not a single one of the 500 agents meets or exceeds their target. 

 

 Loan approval has almost no relationship with deal completion 

85.3% of loan-approved sales complete versus 84.6% of non-approved sales — a gap so small it is not practically meaningful. In most real estate markets, loan approval is a strong predictor of whether a deal closes. 

 

 

  

## Limitations 

No raw / pre-cleaning files were provided — only the six already-cleaned CSVs. This means true before/after cleaning row counts cannot be produced (see Section 5); only the current, post-cleaning state can be audited. 

Indicators of synthetic or heavily sampled data: perfectly even Property_Type shares, near-flat discount and days-on-market figures across every segment, and 0/500 agents meeting target. Treat market-mix conclusions as directional, not a substitute for validating against live source systems. 

One implausible value: Annual_Income in customers_cleaned has a minimum of ₹111 against a mean of ₹1.92M — almost certainly a residual entry or generation error rather than a real customer. 

2026 figures are partial-year (through 14 July 2026) and will understate full-year totals in any straight year-over-year comparison. 

Sales_Target (agents) and Loan_Approved (sales) do not show the relationship with outcomes you'd expect in real-world data (Sections 3.4–3.5), so any model or KPI built on these two fields should be validated before use. 

Geographic fields (Latitude/Longitude in locations_cleaned) were not validated against City/State in this pass — recommend a spot-check if location-based visuals are planned. 
