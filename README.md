# Technical Report
Joey Ashcroft, David Mathews + Brooke Rodriguez

## SUMMARY
We combined historical Olympic games data, UN health data and World Bank economic data to build a robust demographic picture of the countries that participate in the Olympics. We combined these data sets so an analysis could be performed to determine if a country's available healthcare resources and wealth correlates with an increases in event participation.

## EXTRACT
### Data Sources
Olympic History: CSV - https://www.kaggle.com/dsfgfgdsuioghg/120-years-of-olympic-history-basic-graphics/data

UN Health: CSV - http://data.un.org/

World Bank: CSV - https://databank.worldbank.org/data/home.aspx

## TRANSFORM
### Methods
The Olympic history data was imported into Python and did not require cleaning. 
We focused on the following fields:
* Country (primary key)
* Year (primary key)
* Athlete Gender
* Age
* Height
* Weight
* Sport
* Medal

The UN Health data was cleaned in Python - performing the following:
* Selected specific fields: country, year, health profession and number of professionals.
* Filtered out text ("per 1000 population") within the Health Professionals column fields.
* Shortened names within the Health Professionals column using a mapping table and a merge function.
* Transformed data from long form to wide form utilizing the pivot function to give each type of Healthcare Professional its own column.

The World Development data was cleaned in Python - performing the following:
* Each year had a separate column - the melting function was used to move all the years into one column iterated for each country.
* Economic indicators were present in single field - the pivot function was used to move into separate columns.
* Renamed all columns and converted spaces to underscores.
* Cleaned string values - ('..', np.nan)
* Set a threshold for all Economic Indicator columns that if more than 60% of field values were nan then the data was removed.

MySQL to join data, performing the following:
* Created the database.
* Wrote all three tables into the database.
* Performed left joins against the country and year primary keys.

## LOAD
Production Database

Relational - MySQL
https://github.com/davidgmathews/ETL_Project/blob/master/Resources/final_sql_table_dtypes.xlsx
