# Cleaning Plan v1

# Objective

The objective of this cleaning plan is to improve the quality of the real estate datasets before performing Exploratory Data Analysis (EDA), SQL analysis, and Power BI dashboard development. The plan defines consistent rules for handling missing values, duplicate records, incorrect data types, invalid values, and inconsistent categorical values.

---

# Datasets Covered

1. agents.csv
2. amenities.csv
3. customers.csv
4. locations.csv
5. properties.csv
6. sales.csv

---

# 1. Missing Value Strategy

| Dataset | Column | Action | Reason |
|----------|---------|--------|--------|
| agents | Agent_Name | Drop row if missing | Agent identification is mandatory |
| agents | Experience_Years | Impute Median | Preserve records while minimizing bias |
| agents | Commission_Rate | Impute Median | Maintain realistic commission values |
| customers | Gender | Replace with "Unknown" | Cannot reliably infer gender |
| customers | Email | Keep if missing | Not required for sales analysis |
| properties | Construction_Year | Impute Median | Suitable for numerical data |
| properties | Property_Status | Replace with "Unknown" | Maintain record consistency |
| sales | Sale_Date | Remove invalid rows | Date is essential for trend analysis |

---

# 2. Duplicate Handling Strategy

| Dataset | Key Column | Rule |
|----------|------------|------|
| agents | Agent_ID | Remove duplicate IDs |
| customers | Customer_ID | Remove duplicate IDs |
| properties | Property_ID | Remove duplicate IDs |
| locations | Location_ID | Remove duplicate IDs |
| sales | Sale_ID | Remove duplicate IDs |
| amenities | Amenity_ID | Remove duplicate IDs |

---

# 3. Data Type Fixes

| Column | Current Type | Target Type |
|---------|--------------|-------------|
| Experience_Years | Text | Integer |
| Construction_Year | Text | Integer |
| Commission_Rate | Text | Float |
| Sale_Date | Text | Date |
| Registration_Date | Text | Date |
| Property_Price | Text | Float |
| Sale_Price | Text | Float |

---

# 4. Invalid Value Rules

## Agent_ID
- Must be unique
- Cannot be null
- Cannot be negative

Action:
- Remove invalid records.

---

## Commission_Rate

Expected Range:
0–100%

Action:
- Remove negative values.
- Remove values greater than 100.
- Impute missing values using the median.

---

## Experience_Years

Expected Range:
0–50 years

Action:
- Convert to numeric.
- Remove impossible values.
- Impute missing values using the median.

---

## Construction_Year

Expected Range:
1900 to Current Year

Action:
- Convert to numeric.
- Remove impossible years.
- Impute missing values using the median.

---

# 5. Category Harmonisation

## Gender

Standard Value

Male

Accepted Inputs

- Male
- male
- MALE
- M

Standard Value

Female

Accepted Inputs

- Female
- female
- FEMALE
- F

Unknown

- Missing values

---

## Property_Type

Convert all values into one standard format.

Example

Apartment
Villa
House
Plot
Commercial

---

## Property_Status

Convert to

Available
Sold
Pending
Under Contract
Unknown

---

# 6. Keep / Drop / Impute Rules

| Data Issue | Decision |
|------------|----------|
| Missing Agent_Name | Drop |
| Missing Experience_Years | Impute Median |
| Missing Commission_Rate | Impute Median |
| Missing Gender | Replace with Unknown |
| Duplicate IDs | Remove |
| Invalid Commission_Rate | Remove |
| Invalid Construction_Year | Remove or Impute |
| Invalid Experience_Years | Remove or Impute |
| Incorrect Data Types | Convert |
| Inconsistent Categories | Standardize |

---

# 7. Validation Rules

After cleaning:

- No duplicate primary keys
- Numeric columns stored as numeric
- Date columns stored as datetime
- No negative commission values
- No impossible construction years
- Standard category values only
- Missing values handled according to this plan

---

# Expected Deliverables

- Cleaned datasets
- Updated profiling report
- SQL-ready CSV files
- Data cleaning notebook
- Documentation of all cleaning decisions



