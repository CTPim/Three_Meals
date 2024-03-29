# Three Meals - An Analysis of Food Prices Vs. Stock Market Behavior

## Overview:

As a team, we set our sights on trying to analyze whether there is a correlation between the prices of everyday food items and the behaviour of the USA's largest stock market index, the Dow Jones (DJIA), then try to predict if the DJIA will see an increase or decrease through the use of a machine learning predictive model.  The thought process being: a rise in food prices is typical of an inflationary period in the US economy, and inflation usually coincides with investors being less willing to invest in the markets as there is higher risk.

Our team took a high and low level approach when choosing what datasets to include within the analysis on the food market end.  We found it helpful to start by looking at and collecting datasets of the average prices of bread, milk, and beef as they are typically staples of the average american diet.  From there, we decided to view the food market from a wider lense, and looked at the consumer price index (CPI) for food of all urban US consumers. The individual prices we took are some of the pieces used to calculate the food CPI, the food CPI is a part of the overall CPI for all US goods, and the CPI for all US goods is a dataset usually used as indicator/predictor of inflation. 

On the financial side, our team used the DJIA dataset as our test variable.  We used Dow Jones data starting from 1990 to present day to serve as a block to base our correlations upon.  It is also the data that we used to try predict if the DJIA will see an increase or decrease through the use of our machine learning model.

## Questions we are trying to answer:
- Is there a correlation between food prices/food CPI and large scale stock market index behavior?
- Can a prediction of market behavior be made based on the past trends of food prices?
- Do different goods have a larger impact on certain markets? 

## Technology, Languages, & Tools:
- Python:
    -Libraries: Pandas, NumPy, MatPlotLib.Pylot, sklearn
    -Coding interface: Jupyter Notebook
- SQL:
    -Coding interface: PostGres
- Tableau:
    -Interactive visualizations, Presentation slides
- Google Docs/Slides:
    -Platform for team coordination
    -Presentation slides 

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
Our team used Pandas, NumPy, and MatPlotLib as the primary libraries to carry out our analysis and ETL of the raw datasets.  To standardize the data so that it can be effectively cleaned, merged, and analyzed we agreed to only look at data from 1990 to present day, and rename columns to common names and add unit values ("DATE" to "date_time", USD/LB, etc...), and make sure that all data types were changed from object to float/int/etc...  Once the data was cleaned, it would be uploaded to our PostGres database, and visualizations were created.  Some of our latest visualizations are shown below.

-Tableau Story Link: https://public.tableau.com/app/profile/maxine.jean.joseph/viz/ProjectAverageFoodPricesAnalysisPredicting/AnalyzingPredicting?publish=yes

- Food Price vs DJIA Price Line Plots:

![beef_djia_comparison](Images/beef_djia_comparison1.png) 
![milk_djia_comp](Images/milk_djia_comparison.png)
![wheat_djia_comp](Images/wheat_djia_comparison.png)
![foods_comp](Images/foods_comparison.png)
   
   Beef vs DJIA:
There are observed correlations on 7-1-2000 displaying an upward movement.
On 1-1-2003 both variables trended downward.
Between 7-1-2005 and 1-1-2008 they moved up and down almost in unison.
From approx 1-1-2008 to 3-1-2013 they have trended in the same direction.
There was an inverse correlation between these two veriables on approximately 6-1-2015. I will research to see what events might have caused this.
For the most part, the movement of the Dow and Beef prices correlate with each other.

Milk vs the DOW:
THe movement of Milk prices loosely correlates with the DJIA between 7/95 and 1/2013. During this period the price of milk trended in the same direction as the DJIA. It moved inversely with to the DOW in 7/2015 and this trend of inverse movement between the two variables continued until 1/2018. 

Wheat vs the DJIA:
The price of wheat followed the a similar pattern as the DJIA from 7/95 to 1/2003 when it began to move inversely against the Dow. Wheat prices appear to experience the dip that the Dow experienced in 1/2008 during The Great Recession. It began to trend upward in mid2010 and appears to loosely mirror the Dow’s movement. 

- Beef_USDA_Price Table:
    ![beef_usda.png](https://github.com/CTPim/Three_Meals/blob/main/Images/beef_usda.png)

- Database Schema:
    ![Schema.png](https://github.com/CTPim/Three_Meals/blob/main/Images/Schema.png)

- CPI of All Items Vs CPI of Food: 
    ![CPI - All Items vs. Food.png](https://github.com/CTPim/Three_Meals/blob/main/Images/CPI%20-%20All%20Items%20vs.%20Food.png)
    
    ![CPI - All Items & Food Correlation.png](https://github.com/CTPim/Three_Meals/blob/main/Images/CPI%20-%20All%20Items%20%26%20Food%20Correlation.png)
    
    - The CPI for food is a portion of the data used to calculate the CPI for all goods.  This graph compares the CPI of food against the CPI of all goods from 1990 to present day to try to show a correlation.  As the CPI for food is part of the calculation for the CPI of all goods, a correlation is expected (as shown on the graph).  the correlation is further proven using Pandas .corr() function to get a value of .985.

- CPI Percentage Change per Year Graph and Correlation: 
    ![CPI - All Items vs. Food pct change.png](https://github.com/CTPim/Three_Meals/blob/main/Images/CPI%20-%20All%20Items%20vs.%20Food%20pct%20change.png)
    
    ![CPI - PCT Change Correlation.png](https://github.com/CTPim/Three_Meals/blob/main/Images/CPI%20-%20PCT%20Change%20Correlation.png)
    
    - The percent change of the CPI index over the course of a year is used to be an indicator of inflation.  This graph shows the yearly percent change from 1990 to present day of the food CPI and the CPI of all goods to try to show a correlation.  Based on this visualization and the 0.45 correlation value, there is little correlation between annual percentage change of the food CPI and the CPI of all goods.

- Machine Learning Model 1: Confusion Matrix:
    ![ML1_ConfusionMatrix.png](https://github.com/CTPim/Three_Meals/blob/main/Images/ML1_v2_ConfusionMatrix.png)
    
- Machine Learning Model 1: Classification Report:
    ![ML1_ClassificationReport.png](https://github.com/CTPim/Three_Meals/blob/main/Images/ML1_v2_ClassificationReport.png)
    
    - According to our classification report, the logistic regression model seems to be more accurate at predicting a positive change in the Dow Jones; the precision is 0.65 and the recall/sensitivity is 0.98. The model is much less accurate at predicting a negative change, with the precision being 0.80 and the recall/sensitivity  being 0.13. The F1 Scores are .78 and .22, respectively.
    
- Machine Learning Model 2 Iteration 1: Confusion Matrix:
    ![ML1_ConfusionMatrix.png](https://github.com/CTPim/Three_Meals/blob/main/Images/ML1_ConfusionMatrix.png)
    
- Machine Learning Model 2 Iteration 1: Classification Report:
    ![ML_2_Same_DateClassification Report.png](https://github.com/CTPim/Three_Meals/blob/main/Images/ML_2_Same_DateClassification%20Report.png)
    
    - The 1st iteration of the 2nd predicitve model added more data (added CPI data for all goods, monthly and yearly percent changes for both the food CPI and the CPI for all goods). According to our classification report, this iteration of the logistic regression model performed worse in almost all fields than the 1st model; the precision dropped to -0.59 and the recall/sensitivity remained the same at 0.88. The model is even less accurate at predicting a negative change than the 1st iteration, with the precision being 0.33 and the recall/sensitivity  being 0.09. The F1 Scores are 0.71 and 0.14, respectively.
    
- Machine Learning Model 2 Iteration 2: Confusion Matrix & Classification Report:
    ![ML_2_Same_DateClassification Report & Matrix.png](https://github.com/CTPim/Three_Meals/blob/main/Images/ML_2_Same_DateClassification%20Report%20%26%20Matrix.png)
    
    - The 2nd iteration of the 2nd predictive model added more data (removed extraneous data (All Goods - CPi, and added monthly percentage change values to all of the food prices). According to our classification report, the 2nd iteration of the logistic regression model performed than the 1st iteration; the precision jumped to 0.72 and the recall/sensitivity slightly decreased to 0.85. The model is slightly more accurate at predicting a negative change than the 1st iteration, with the precision being 0.36 and the recall/sensitivity  being 0.21. The F1 Scores are 0.78 and 0.26, respectively.

- Price Correlations:
    ![Price_Corr.png](https://github.com/CTPim/Three_Meals/blob/main/Images/Price_Corr.png)

- Percentage Correlations:
    ![Percent_Corr.png](https://github.com/CTPim/Three_Meals/blob/main/Images/Percent_Corr.png)

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
- Create a new column called for "Percent Change" and determine the change in price percentage of the targeted food by using Pandas function pct_change()
- Confirm that all data types are changed to datetime/float/int/etc...  (eliminate strings that are not necessary)
- Create ERD diagram identifying primary and foreign keys (https://dbdiagram.io/d)
- When dataframe is cleaned and ERD is created, send message to team for integration into postgres database.



## Team Notes:

### Roles:
- Git Manager: Chumpon
- Postgres Manager: Maxine
- ETL/Analysts: By team members for their respective datasets
- Predictive Model Manager: Russ & Jennifer
- Tableau: Maxine
- README: Jack

### Presentation Outline:
https://docs.google.com/document/d/1XdClzjiKHlGEJvBIJayIHBjT1X43zuwDLQjQoXXd4fo/edit?usp=sharing

### Presentation Slides:
https://docs.google.com/presentation/d/1f3WkZp4PsJtKOCAP-iXfFA9IDtVh3bWpm9aUNXICDFU/edit?usp=sharing

### Project Status/Tasks

#### Project Status for 3/9 Deliverable (Written of 3/7):
-  Finished dataset decriptions are above.
-  Database with tables is in the schema in the edited data folder.
    (https://github.com/CTPim/Three_Meals/blob/main/Edited%20Data/Schema.sql)
    ![Schema.png](https://github.com/CTPim/Three_Meals/blob/main/Notes/Schema.png)
-  Questions and overview are above

#### Project Status/Goals for 3/16 Deliverable (Written of 3/7):
- Nobel prize winner roughly around time that the Berlin Wall came down tracking price of milk against economic performance - Mikhail Gorbachev.
- All datasets cleaned (3/14)
- Preliminary predictive model (3/16)
    - DJIA has column for % change.  Let's try to use a method of classification (categorical or logistic regression - unsupervised model) to group data by category for analysis.
- Begin working on Tableau visualizations

##### Deliverable Breakdown (3/16)
- Selected topic and reasoning for selection:
    -	Good on this
- Description of the data source 
    -	Good on this
- Questions the group originally aimed to answer with the data 
    -	In README
- Description of the data exploration phase of the project 
    -	Add a exploration section to README:  Give where we looked for the data, what we were looking for correlation – Ask Dave/TA on Thursday (3/9)
- Description of the analysis phase of the project 
    -	Add analysis/process section to the README.  Dive deeper into the analysis of the specific datasets.
- Technologies, languages, tools, and algorithms used throughout the project
    -	Good on this

##### Deliverable Breakdown (3/16, written on 3/14)
- A detailed README with project status, images, descriptions, and results 
    -	Add photos of the correlation graphs.  Should be good for 3/16
- At least 8 total commits per group member 
    -	Good on this
- Machine learning model including confusion matrix and accuracy score 
    -	Good on this
- Database that stores data for the project with at least two tables or collections
    -	Add any other cleaned data to the database.  Should be good.

- Selected topic and reasoning for selection 
    -	Good on this.
- Description of the data source 
    -	See Data section
- Questions the group originally aimed to answer with the data 
    -	See questions section
- Description of the data exploration phase of the project 
    -	Add charts and blurb to results section README.
- Description of the analysis phase of the project 
    -	See Analysis/process
- Technologies, languages, tools, and algorithms used throughout the project
    -	Good on this

#### Additional To Do’s:
-	Add explanations to the results section of the readme.
    -	If anyone needs commits, do this^^
-	Jack – add yearly percentage change to ML model
    -	Add percent change columns to food prices.
-	Have a couple attempts on optimization of the ML model
-	Start creating tableau dashboards – Can you collaborate?

#### Graph To Do's:
- Multi-line graph of food prices
- Multi line graph of food prices vs dow jones data w/ (2) axis, similar to what on the readme 
- Box & whisker percent changes of food & CPI
- Multi line graph of Food CPI vs All Goods CPI (inflation), similar to what on the readme 
- Multi-line DJIA vs CPI – All Goods pct change

##### Would be cool to have:
- K-means cluster visualization
- Correlation table of food and DJIA prices.  Similar to dataframe above:
    ![Price_Corr.png](https://github.com/CTPim/Three_Meals/blob/main/Images/Price_Corr.png)
    https://kb.tableau.com/articles/howto/creating-a-correlation-value-matrix
    
Tableau Dashboard & Story
https://public.tableau.com/app/profile/maxine.jean.joseph/viz/ProjectAverageFoodPricesAnalysisPredicting/AnalyzingPredicting?publish=yes

https://public.tableau.com/app/profile/maxine.jean.joseph/viz/ProjectAverageFoodPricesAnalysis/FoodPricesandTheDowJonesIndex
