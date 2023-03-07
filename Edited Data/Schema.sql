
CREATE TABLE  cleaned_milk_data(
     date_time DATE NOT NULL,
     milk_cost_per_gallon INT NOT NULL,
     PRIMARY KEY (date_time),
     UNIQUE (date_time)
);


CREATE TABLE avg_price_bread_whole_wheat (
     date_time DATE NOT NULL,
     apu0000702212 VARCHAR NOT NULL,
     PRIMARY KEY (date_time)
);

CREATE TABLE fred_beef_cleaned (
	column_1 VARCHAR (50)NOT NULL,
     date_time DATE NOT NULL,
     price VARCHAR (50) NOT NULL,
     PRIMARY KEY (date_time)
);

CREATE TABLE food_cpi_data (
     date_time DATE NOT NULL,
     CUSR0000SAF112 VARCHAR (50) NOT NULL,
     PRIMARY KEY (date_time)
    
);

CREATE TABLE beef_usda (
     date_time DATE NOT NULL,
     byproduct VARCHAR (50) NOT NULL,
     gross_farm_value VARCHAR (50) NOT NULL,
     net_farm_value VARCHAR (50) NOT NULL,
     wholesale_value VARCHAR (50) NOT NULL,
     retail_value VARCHAR (50) NOT NULL,
     total_spread VARCHAR (50) NOT NULL,
     farm_wholesale_spread VARCHAR (50) NOT NULL,
     wholesale_retail_spread VARCHAR (50) NOT NULL,
     all_fresh_beef_retail_value VARCHAR (50) NOT NULL,
     PRIMARY KEY (date_time)
 
);

CREATE TABLE cleanedDJIA(
     date_time DATE NOT NULL,
     price VARCHAR (50) NOT NULL,
     open VARCHAR (50) NOT NULL,
     high VARCHAR (50) NOT NULL,
     low VARCHAR (50) NOT NULL,
     volume VARCHAR (50) NULL,
     change VARCHAR (50) NOT NULL,
     PRIMARY KEY (date_time)
     
);