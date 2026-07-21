# Data Profiling Report

## Dataset Reviewed
- agents.csv
- customers.csv
- properties.csv

## Data Type Issues
- Experience_Years contained text values.
- Construction_Year contained invalid numeric entries.
- Sale_Date had malformed dates.

## Invalid Values
- Agent_ID: 3 duplicate IDs detected.
- Agent_Name: 2 blank values found.
- Commission_Rate: 5 values greater than 100%.

## Category Issues
Gender:
- Male
- male
- M
- Female
- F

Property_Type:
- Apartment
- apartment
- APT

Property_Status:
- Available
- available
- Sold
- sold

## Recommended Actions
- Convert numeric columns using pd.to_numeric().
- Standardize category labels.
- Remove duplicate Agent_ID values.
- Correct or remove invalid commission rates.
- Fix malformed dates.
