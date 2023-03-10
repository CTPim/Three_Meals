# Three Meals - 

## Overview:
- General idea: Find a relation between food prices and large scale stock index prices
    - Foods being analyzed:
        - Wheat/Bread
        - Beef
        - Milk
        - Food CPI
    
    - Indices/Financial being analyzed:
        - DOW JONES (DJIA)
        - NASDAQ?
        - USDA
        - CME

## Raw Datasets & Applications:
### (Here is the dataset that was found, here is why it is revelant...)

- Average milk price (https://fred.stlouisfed.org/series/APU0000709112)
    - Data showing the average prices of milk from July 1995 to January 2023.  Price of milk per gallon (lb) is a variable used in calculating the food CPI.  CPI's are good indicators of inflation.

- Average beef price (https://fred.stlouisfed.org/series/APU0000703112)
    - Data showing the monthly average price of beef from 1990 to 2023. Price is listed in dollars per pound. As a food staple, the price of beef may have an impact on finances for business and individuals.  

- Average Bread (Wheat) price (https://fred.stlouisfed.org/series/APU0000702212)
    - Data showing the average prices of bread from mid 1960's to present day.  Price of bread per pound (lb) is a variable used in calculating the food CPI.  CPI's are good indicators of inflation.

- CPI - food (https://fred.stlouisfed.org/series/CUSR0000SAF112)
    - CPI's are the overall change in consumer prices based on a representative basket of goods and services over time.  For the project analysis, the Food CPI will be reviewed.  The data provides index values (based in 1982-84=100) from the mid 1960's to present day. CPI's are good indicators of inflation.

- Dow Jones DJIA (https://www.investing.com/indices/us-30-historical-data)
    - The Dow Jones Industrial Average is a stock market index that tracks 30 large publicly owned US companies. It is often used as an indicator of the overall health of the US economy and stock market. 

- NASDAQ API (https://blog.data.nasdaq.com/api-for-commodity-data)
    - XXXXXXXX

- USDA.gov API (https://fdc.nal.usda.gov/api-guide.html)
    - XXXXXXXX

- CME Datamine API (https://www.cmegroup.com/market-data/datamine-api.html)
    - XXXXXXXX

## Link to ERD diagrams
- DJIA relation: https://dbdiagram.io/d/64057920296d97641d859fd4
- 

## Process:
    1. Find raw dataset
    2. Upload to raw data folder on git
    3. Use Pandas for ETL on raw data, and then save to edited data folder.
    4. Make ERD for SQL/Postgres table create (primary keys, etc…) 
    5. Make postgres database and add edited dataset to postgres to create tables

## General Data Procedure/Notes
- Analyze data monthly from 1990 to present day
- Import dataset to pandas to create dataframe
- Change names of columns (date column to be: "date_time", price column to be: "Price (unit of measure)", Index, etc...)
- Confirm that all data types are changed to datetime/float/int/etc...  (eliminate strings that are not necessary)
- Create ERD diagram identifying primary and foreign keys (https://dbdiagram.io/d)
- When dataframe is cleaned and ERD is created, send message to team for integration into postgres database.

## Roles:
- Git Manager: Chumpon
- Postgres Manager: Maxine
- ETL/Analysts: By team members for their respective datasets
- Predictive Model Manager: Russ & Jennifer
- Tableau: Maxine
- README: Jack


## Project Status for 3/9 Deliverable (Written of 3/7):
-  Finish dataset decriptions.
-  Database with tables is in the schema in the edited data folder.
    (https://github.com/CTPim/Three_Meals/blob/main/Edited%20Data/Schema.sql)
-  Questions and overview are above

## Project Status/Goals for 3/16 Deliverable (Written of 3/7):
- Nobel prize winner roughly around time berlin wall came down tracking price of milk against economic performance - who is this?
- All datasets cleaned (3/14)
- Preliminary predictive model (3/16)
    - DJIA has column for % change.  Let's try to use a method of classification (categorical or logistic regression - unsupervised model) to group data by category for analysis.
- Begin working on Tableau visualizations

### Deliverable Breakdown (3/16)
- Selected topic and reasoning for selection:
    -	Build out paragraph on overview, questions, programming languages - Jack
- Description of the data source 
    -	To be completed for Thursday 3/8
- Questions the group originally aimed to answer with the data 
    -	In README
- Description of the data exploration phase of the project 
    -	Add a exploration section to README:  give where we looked for the data, what we were looking for correlation – Ask Dave/TA on Thursday (3/9)
- Description of the analysis phase of the project 
    -	Add analysis/process section to the README.  Dive deeper into the analysis of the specific datasets.
- Technologies, languages, tools, and algorithms used throughout the project
    -	Add list of tech, methods, tools, etc… (pandas, jupyter, SQL, Tableau, Postgres, python)


