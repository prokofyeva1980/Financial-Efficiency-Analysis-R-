#1 Assessment of labor productivity growth
# istall "dplyr"
install.packages("dplyr")
library(dplyr)
# Loading the data file  
# Defining columns 
file<-"C:\\Users\\...\\...\\....csv" # file path
data <- read.csv2(file, stringsAsFactors = FALSE)

# Calculating total values for previous year 
total_output<-data %>% summarise(total_output = sum(Output_previous_year, na.rm = TRUE)) %>% pull(total_output)
total_employees<-data %>% summarise(total_employees = sum(!is.na(Employees_previous_year)))  %>% pull(total_employees)

# total sum of all produced goods for previous year

labor_productivity <-total_output/total_employees

print(paste("Labor productivity for 2024 is", labor_productivity))

# Calculating total values for current year 
total_output_current<-data %>% summarise(total_output_current = sum(Output_current_year, na.rm = TRUE)) %>% pull(total_output_current)

total_employees_current<-data %>% summarise(total_employees_current = sum(!is.na(Employees_current_year)))  %>% pull(total_employees_current)


# total sum of all produced goods for current year

labor_productivity_current <-total_output_current/total_employees_current

print(paste("Labor productivity for 2025 is", labor_productivity_current))

# Assessment of labor productivity growth

percentage_change <- round(((labor_productivity_current - labor_productivity) / labor_productivity) * 100,2)

percentage_change

# Conditional statement for percentage change
if (percentage_change<5){
  print(paste("Percentage change in labor productivity is less then", percentage_change, "%" ))
} else {
  print(paste("Percentage change in labor productivity is equal or more  then", percentage_change, "%" ))
}


