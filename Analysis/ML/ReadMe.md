## Purpose of these folders

Within this `ML` (Machine Learning) folder. There are two folders,

 - The `same_date` folder contains models and data where the food price data and DJIA data are all from matched months. For example, the row with the price of milk from May 2004 will contain the price movement of the DJIA for May 2004.
 
 - The `pred_next_month` contains models and data where each row contains food data and the DJIA data from one month in the future. For example, the row with the price of milk from May 2004 will contain the price movement of the DJIA for June 2004. 
 
While building the first model, I recognized that the model was being used to predict negative or positive movement of the DJIA for the same month as the food price data. I wanted to see how the model (or other models) may perform at using food price data to predict what the DJIA did in the following month, rather than in the same month.