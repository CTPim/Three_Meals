# Three Meals - An Analysis of Food Prices Vs. Stock Market Behavior

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

## Questions:
- Is there a correlation between food prices/food CPI and large scale stock market index behavior?
- Can a prediction of market behavior be made based on the past trends of food prices?
- Do different goods have a larger impact on certain markets? 

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
    - The Nasdaq Data Link API displays commodity data. We will be using it for grain prices and farm data.

- USDA.gov API (https://fdc.nal.usda.gov/api-guide.html)
    - THe USDA FoodData Central API has a Food Seach function which allows us to view information about different foods.

- CME Datamine API (https://www.cmegroup.com/market-data/datamine-api.html)
    - Data from the CME regarding different commodities on the market and their historical prices.

- The Consumer Price Index(https://api.dol.gov/V1/Statistics/CPI) The Consumer Price Index measures US consumer spending on Food.

## Link to ERD diagrams
- DJIA relation: https://dbdiagram.io/d/64057920296d97641d859fd4

## Analysis/Results
- Beef price vs DJIA Price Plot:
    ![beef_djia_comparison.png](https://github.com/CTPim/Three_Meals/blob/main/Images/beef_djia_comparison.png)

- Beef_USDA_Price Table:
    ![beef_usda.png](https://github.com/CTPim/Three_Meals/blob/main/Images/beef_usda.png)

- Database Schema:
    ![Schema.png](https://github.com/CTPim/Three_Meals/blob/main/Images/Schema.png)
 
- Machine Learning Model: Confusion Matrix:
    ![ML1_ConfusionMatrix.png](https://github.com/CTPim/Three_Meals/blob/main/Images/ML1_ConfusionMatrix.png)
    
- Machine Learning Model: Classification Report:
    ![ML1_ClassificationReport.png](https://github.com/CTPim/Three_Meals/blob/main/Images/ML1_ClassificationReport.png)
    
    - According to our classification report, the logistic regression model seems to be more accurate at predicting a positive change in the Dow Jones; the precision is -0.69 and the recall/sensitivity is 0.88. The model is much less accurate at predicting a negative change, with the precision being 0.36 and the recall/sensitivity  being 0.15.

- CPI Percentage Change per Year: 
    !["CPI All Items vs. Food.png"](https://github.com/CTPim/Three_Meals/blob/main/Images/CPI%20-%20All%20Items%20vs.%20Food.png)
    
    - The percent change of the CPI index over the course of a year is used to be an indicator of inflation.  This graph shows the percent change from 1990 to present       day of the food CPI and the CPI of all goods to try to show a correlation.  Based on this visualization, there is little correlation between soley the food CPI         and the CPI of all goods.
    
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
- Create a new column called for "Percent Chaange" and determine the change in price percentage of the targeted food by using Pandas function pct_change()
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

## Project Status/Tasks

### Project Status for 3/9 Deliverable (Written of 3/7):
-  Finished dataset decriptions are above.
-  Database with tables is in the schema in the edited data folder.
    (https://github.com/CTPim/Three_Meals/blob/main/Edited%20Data/Schema.sql)
    ![Schema.png](https://github.com/CTPim/Three_Meals/blob/main/Notes/Schema.png)
-  Questions and overview are above

### Project Status/Goals for 3/16 Deliverable (Written of 3/7):
- Nobel prize winner roughly around time berlin wall came down tracking price of milk against economic performance - who is this?
- All datasets cleaned (3/14)
- Preliminary predictive model (3/16)
    - DJIA has column for % change.  Let's try to use a method of classification (categorical or logistic regression - unsupervised model) to group data by category for analysis.
- Begin working on Tableau visualizations

#### Deliverable Breakdown (3/16)
- Selected topic and reasoning for selection:
    -	Build out paragraph on overview, questions, programming languages - Jack
- Description of the data source 
    -	To be completed for Thursday 3/8
- Questions the group originally aimed to answer with the data 
    -	In README
- Description of the data exploration phase of the project 
    -	Add a exploration section to README:  Give where we looked for the data, what we were looking for correlation – Ask Dave/TA on Thursday (3/9)
- Description of the analysis phase of the project 
    -	Add analysis/process section to the README.  Dive deeper into the analysis of the specific datasets.
- Technologies, languages, tools, and algorithms used throughout the project
    -	Add list of tech, methods, tools, etc… (pandas, jupyter, SQL, Tableau, Postgres, python)

#### Deliverable Breakdown (3/16, written on 3/14)
- A detailed README with project status, images, descriptions, and results 
    -	Add photos of the correlation graphs.  Should be good for 3/16
- At least 8 total commits per group member 
    -	Good on this
- Machine learning model including confusion matrix and accuracy score 
    -	Good on this
- Database that stores data for the project with at least two tables or collections
    -	Add any other cleaned data to the database.  Should be good.

- Selected topic and reasoning for selection 
    -	Good on this. Build on it - Jack
- Description of the data source 
    -	See Data section
- Questions the group originally aimed to answer with the data 
    -	See questions section
- Description of the data exploration phase of the project 
    -	Add charts and blurb to results section README.
- Description of the analysis phase of the project 
    -	See Analysis/process
- Technologies, languages, tools, and algorithms used throughout the project
    -	Add tech section

Additional To Do’s:
-	Add explanations to the results section of the readme.
    -	If anyone needs commits, do this^^
-	Jack – add yearly percentage change to ML model
    -	Add percent change columns to food prices.
-	Have a couple attempts on optimization of the ML model
-	Start creating tableau dashboards – Can you collaborate?

