#2 The share of personnel costs in the total expenses, considering the sales volume over a specific period.
# istall "dplyr"
install.packages("dplyr")
library(dplyr)
# Loading the data file  
# Defining columns 
file<-"C:\\Users\\...\\...\\....csv" # file path
data<-read.csv2(file, stringsAsFactors = FALSE)
# Calculating total sales and labor costs values  
total_sales<- data %>% summarise(total_sales=sum(Sales, na.rm=TRUE)) %>% pull(total_sales)                  
total_labor_costs<-data %>% summarise(total_labor_costs=sum(Costs, na.rm = TRUE)) %>% pull(total_labor_costs)
# total labor costs in total sales
labor_costs<-((total_labor_costs/total_sales)*100)
labor_costs 

# Interpretation of results:
# The standard labor costs ratio in the total sales amount is between 15% and 20%.


if (labor_costs<=15){
  print(paste("Labor costs are less then", x,"%", "Labor costs are less then normal % in total sales"))
}else if (labor_costs>15 & x<=20) {
  print(paste("Labor costs are", x, "%", "Labor costs are normal % in total sales"))
  
}else {
  print(paste("Labor costs are", x, "%", "Labor costs are more then normal % in total sales"))
}
}

