Project Overview
This repository contains two R scripts that focus on assessing key performance metrics for a business:

labor_productivity.r - This script calculates and compares labor productivity growth over a specific period by analyzing data from two consecutive years.
personnel_costs.r - This script assesses the share of personnel costs in total expenses, considering the sales volume over a specified period.
Both scripts make use of the dplyr library to manipulate and process the data.

Data Used
The scripts rely on the following types of data:

Employee Data - Information regarding the number of employees in the business for the previous and current years.
Sales Data - Sales figures for both the previous and current years.
Cost Data - Data on labor costs (personnel expenses) for both the previous and current years.
The data is expected to be in CSV format.

Libraries Used
dplyr: This R library is used for data manipulation, including summarization, filtering, and calculations.
To install the dplyr library, use the following command in R:

r
install.packages("dplyr")
library(dplyr)

Scripts
labor_productivity.r
This script calculates labor productivity growth by:

Summing up the total output and total employees for both the previous and current years.
Computing labor productivity as the ratio of total output to total employees for both years.
Assessing the percentage change in labor productivity between the two years.
personnel_costs.r
This script calculates the share of personnel costs in total expenses, considering sales volume:

It sums up total sales and total labor costs for both the previous and current years.
It calculates labor costs as a percentage of total sales for both years.
It provides an interpretation of the results by comparing the calculated labor cost percentage to a normal range (typically 15% to 20%).

Author:Inga Prokofyeva
