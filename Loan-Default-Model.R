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
