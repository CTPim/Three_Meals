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
    - XXXXXXX

- Average beef price (https://fred.stlouisfed.org/series/APU0000703112)
    - XXXXXXX

- Average Bread (Wheat) price (https://fred.stlouisfed.org/series/APU0000702212)
    - Data showing the average prices of bread from mid 1960's to present day.  Price of bread per pound (lb) is a variable used in calculating the food CPI.  CPI's are good indicators of inflation.

- CPI - food (https://fred.stlouisfed.org/series/CUSR0000SAF112)
    - CPI's are the overall change in consumer prices based on a representative basket of goods and services over time.  For the project analysis, the Food CPI will be reviewed.  The data provides index values (based in 1982-84=100) from the mid 1960's to present day. CPI's are good indicators of inflation.

- Dow Jones DJIA (https://www.investing.com/indices/us-30-historical-data)
    - XXXXXXXX

- NASDAQ API (https://blog.data.nasdaq.com/api-for-commodity-data)
    - XXXXXXXX

- USDA.gov API (https://fdc.nal.usda.gov/api-guide.html)
    - XXXXXXXX

- CME Datamine API (https://www.cmegroup.com/market-data/datamine-api.html)
    - XXXXXXXX

## Link to ERD diagrams
-DJIA relation: https://dbdiagram.io/d/64057920296d97641d859fd4

## Process:
    1. Find raw dataset
    2. Upload to raw data folder on git
    3. Use Pandas for ETL on raw data, and then save to edited data folder.
    4. Make ERD for SQL/Postgres table create (primary keys, etc…) 
    5. Make postgres database and add edited dataset to postgres to create tables

## General Data Procedure/Notes
- Analyze data monthly from 1990 to present day
- Import dataset to pandas to create dataframe
- Confirm that all data types are changed to datetime/float/int/etc...  (eliminate strings that are not necessary)
- Create ERD diagram identifying primary and poreign keys (https://dbdiagram.io/d)
- When dataframe is cleaned and ERD is created, send message to team for integration into postgres database.

## Roles:
- Git Manager: Chumpon
- Postgres Manager: Maxine
- ETL/Analysts: By team members for their respective datasets
- Predictive Model Manager: TBD



