# 1. Default Risk Prediction Model ----
## A. Loading the data set to be used ----

# The data set used was obtained from Kaggle. It contains 5 variables and 
# 10000 observations.
library(readr)
Loan_Default <- read_csv("data/Loan_Default.csv", 
    col_types = cols(Employed = col_factor(levels = c("1", 
        "0")), Defaulted = col_factor(levels = c("1", 
        "0"))))
View(Loan_Default) 

## B. Exploratory Data Analysis
# Previewing the dataset
dim(Loan_Default)
# Identifying the Data Types
sapply(Loan_Default, class)
## MEASURES OF FREQUENCY
### Percent
# Identifying the number of instances that belong
# to each class
Loan_Default_frequency <- Loan_Default$Defaulted
cbind(frequency = table(Loan_Default_frequency),
      percentage = prop.table(table(Loan_Default_frequency)) * 100)
# The results show that the dataset is highly imbalanced which could introduce a 
# lot of bias to the resulting model; making it more biased towards predicting 
# the majority class(non-defaults) and might not perform well in identifying instances
# of the minority class(Defaults).

## MEASURES OF CENTRAL TENDENCY 
### Mode
Loan_Default_Mode <- names(table(Loan_Default$Defaulted))[
  which(table(Loan_Default$Defaulted) ==
          max(table(Loan_Default$Defaulted)))
]
print(Loan_Default_Mode)

### Mean and Median 
#### For the Annual Salary variable
mean_anSal <- mean(Loan_Default$Annual_Salary, na.rm = TRUE)
median_anSal <- median(Loan_Default$Annual_Salary, na.rm = TRUE)
cat("Mean Annual Salary: ", mean_anSal, "\n")
cat("Median Annual Salary: ", median_anSal, "\n")
#### For the Bank Balance
mean_Bbal <- mean(Loan_Default$Bank_Balance, na.rm = TRUE)
median_Bbal <- median(Loan_Default$Bank_Balance, na.rm = TRUE)
cat("Mean Bank Balance: ", mean_Bbal, "\n")
cat("Median Bank Balance: ", median_Bbal, "\n")














