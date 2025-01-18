############################################################################
############################################################################
#      SUPERVISED MACHINE LEARNING - REGRESSION
#          CLASS PROJECT
#
# GERARDO TAPIA
# INTRODUCTION TO DATA SCIENCES, FALL 2022
############################################################################
############################################################################



############################################################################
#      Access the Data Set
############################################################################


############################################################################
# STEP 1: ACCESS THE DATA SET
# Read the CSV file directly using a direct 
setwd("C:\\Trabajo\\Personal\\Learning\\UCLA\\DataScience\\Class_project")
housing <- read.csv(".\\data\\housing.csv")

# Cast ocean_proximity character variable to the factor class, and display
housing$ocean_proximity = as.factor(housing$ocean_proximity)
# Display resulting levels
levels(housing$ocean_proximity)

############################################################################
# STEP 2: EDA and Data Visualization
############################################################################


# A) Run head() and tail()

head(housing)
tail(housing)

# B) Run summary()
summary(housing)
str(housing)
levels(housing$ocean_proximity)


# C) Perform correlation analysis on numeric variables in the DF
input <- housing[,c("longitude", "latitude","total_rooms", "total_bedrooms","population","households",
                "housing_median_age","median_income","median_house_value")]
cor(input, use = "complete.obs")
pairs(input, col="orange")

# Zoom to those variables identified as correlated
plot(input$household, input$total_bedrooms, main="Household - Bedrooms", xlab="household ", ylab="Total Bedrooms", pch=19, font.main="1",font.lab="4", cex.main="2", cex.lab="2", col="orange")
plot(input$total_bedrooms, input$total_rooms, main="Total Bedrooms - Rooms", xlab="Total Bedrooms ", ylab="Total Rooms", pch=19, font.main="1",font.lab="4", cex.main="2", cex.lab="2", col="orange")
plot(input$latitude, input$longitude, main="Latitude - Longitude", xlab="Latitude ", ylab="Longitude", pch=19, font.main="1",font.lab="4", cex.main="2", cex.lab="2", col="orange")
plot(input$households, input$total_rooms, main="Households - Total Rooms", xlab="Households ", ylab="Total Rooms", pch=19, font.main="1",font.lab="4", cex.main="2", cex.lab="2", col="orange")
plot(input$households, input$population, main="Households - Population", xlab="Households ", ylab="Population", pch=19, font.main="1",font.lab="4", cex.main="2", cex.lab="2", col="orange")
plot(input$population, input$total_rooms, main="Population - Total Rooms", xlab="Population", ylab="Total Rooms", pch=19, font.main="1",font.lab="4", cex.main="2", cex.lab="2", col="orange")
plot(input$population, input$total_bedrooms, main="Population - Total Bedrooms", xlab="Population", ylab="Total Bedrooms", pch=19, font.main="1",font.lab="4", cex.main="2", cex.lab="2", col="orange")
plot(input$total_bedrooms, input$longitude, main="Total Bedrooms - Longitude", xlab="Total Bedrooms", ylab="longitude", pch=19, font.main="1",font.lab="4", cex.main="2", cex.lab="2", col="orange")
plot(input$total_bedrooms, input$latitude, main="Total Bedrooms - Latitude", xlab="Total Bedrooms", ylab="latitude", pch=19, font.main="1",font.lab="4", cex.main="2", cex.lab="2", col="orange")


# D) Create histogram for each numeric variable
hist(housing$longitude, breaks = 20, main = "Hist of longitude", font.main="1",font.lab="4", cex.main="2", cex.lab="2",border="black", col="orange", xlab="longitude")
hist(housing$latitude, breaks = 20, main = "Hist of latitude", font.main="1",font.lab="4", cex.main="2", cex.lab="2",border="black", col="orange", xlab="latitude")
hist(housing$housing_median_age, breaks = 20, main = "Hist of housing median age", font.main="1",font.lab="4", cex.main="2", cex.lab="2",border="black", col="orange", xlab="Housing Media Age")
hist(housing$total_rooms, breaks = 10, main = "Hist of total rooms", font.main="1",font.lab="4", cex.main="2", cex.lab="2",border="black", col="orange", xlab="Total Rooms")
hist(housing$total_bedrooms, breaks = 10, main = "Hist of total bedrooms", font.main="1",font.lab="4", cex.main="2", cex.lab="2",border="black", col="orange", xlab="Total Bedrooms")
hist(housing$population, breaks = 20, main = "Hist of population", font.main="1",font.lab="4", cex.main="2", cex.lab="2",border="black", col="orange", xlab="Population")
hist(housing$households, breaks = 20, main = "Hist of households", font.main="1",font.lab="4", cex.main="2", cex.lab="2",border="black", col="orange", xlab="Households")
hist(housing$median_income, breaks = 20, main = "Hist of median income", font.main="1",font.lab="4", cex.main="2", cex.lab="2",border="black", col="orange", xlab="Median Income")
hist(housing$median_house_value, breaks = 20, main = "Hist of median house value", font.main="1",font.lab="4", cex.main="2", cex.lab="2",border="black", col="orange", xlab="Median House Value")


# E) Produce a boxplot for the numeric variables in the data frame
plot.new()
dev.new(width = 800,   # Create new plot window
        height = 1000,
        unit = "px",
        noRStudioGD = TRUE)
boxplot(input, las=2, cex.axis=0.8)

boxplot(input$longitude,  main = "Longitude", font.main="1",font.lab="4", cex.main="2", cex.lab="2", border="black", col="orange", xlab="longitude")
boxplot(input$latitude,  main = "Latitude", font.main="1",font.lab="4", cex.main="2", cex.lab="2", border="black", col="orange", xlab="latitude")
boxplot(input$housing_median_age, main = "Housing median age", font.main="1",font.lab="4", cex.main="2", cex.lab="2", border="black", col="orange", xlab="Housing Media Age")
boxplot(input$total_rooms, main = "Total rooms", font.main="1",font.lab="4", cex.main="2", cex.lab="2", border="black", col="orange", xlab="Total Rooms")
boxplot(input$total_bedrooms, main = "Total bedrooms",font.main="1",font.lab="4", cex.main="2", cex.lab="2",  border="black", col="orange", xlab="Total Bedrooms")
boxplot(input$population, main = "Population", font.main="1",font.lab="4", cex.main="2", cex.lab="2", border="black", col="orange", xlab="Population")
boxplot(input$households, las=2, cex.axis=0.8, main = "Households", font.main="1",font.lab="4", cex.main="2", cex.lab="2", border="black", col="orange", xlab="Households")
boxplot(input$median_income, las=2, cex.axis=0.8, main = "Median income", font.main="1",font.lab="4", cex.main="2", cex.lab="2", border="black", col="orange", xlab="Median Income")
boxplot(input$median_house_value, main = "Median house value", font.main="1",font.lab="4", cex.main="2", cex.lab="2", border="black", col="orange", xlab="Median House Value")


# F) Produce boxplot for the variables: housing_media_age, median_income, median_house_value with "respect 
#    to the factor variable ocean_proximity
boxplot(housing$housing_median_age~housing$ocean_proximity, xlab="Ocean Proximity", ylab="Housing Median Age", font.main="1",font.lab="4", cex.main="2", cex.lab="2",col="orange", border="black")
boxplot(housing$median_income~housing$ocean_proximity, xlab="Ocean Proximity", ylab="Median Income", font.main="1",font.lab="4", cex.main="2", cex.lab="2", col="orange", border="black")
boxplot(housing$median_house_value~housing$ocean_proximity, xlab="Ocean Proximity", ylab="Median House Value", font.main="1",font.lab="4", cex.main="2", cex.lab="2",col="orange", border="black")


############################################################################
# 3 DATA TRANSFORMATION
############################################################################


# A) Update total_bedrooms NA for the median value
housing$total_bedrooms[is.na(housing$total_bedrooms)] = median(housing$total_bedrooms , na.rm = TRUE)


# B) Split ocean_proximity variable into a number of binary categorical variables of 0 and 1's
#    remove ocean_category from the data frame


op_cat <- levels(housing$ocean_proximity)
ocean_prox <- function(c) {return(housing$ocean_proximity == c)}
new_vars <- sapply(op_cat, ocean_prox)
housing$h_ocean_b<-new_vars[,1]
housing$inland_b<-new_vars[,2]
housing$island_b<-new_vars[,3]
housing$near_bay_b<-new_vars[,4]
housing$near_ocean_b<-new_vars[,5]

housing$h_ocean<-as.integer(housing$h_ocean_b)
housing$inland<-as.integer(housing$inland_b)
housing$island<-as.integer(housing$island_b)
housing$near_bay<-as.integer(housing$near_bay_b)
housing$near_ocean<-as.integer(housing$near_ocean_b)

new_housing2 <- housing[,-10:-15]

housing<-NULL
housing<-new_housing2

# C) Use total_bedrooms and total_rooms along with households to create
#    mean_number_bedrooms and mean_number_rooms and delete variables
#    total_bedrooms and total_rooms
housing$mean_number_bedrooms<-housing$total_bedrooms/housing$households
housing$mean_number_rooms<-housing$total_rooms/housing$households
housing$total_bedrooms<-NULL
housing$total_rooms<-NULL


# D) scale each numerical variable except median_house_value and the binary
#    categorical variables

numerical_variables <- housing[,c("longitude", "latitude","housing_median_age","population","households",
                                  "median_income","mean_number_bedrooms", "mean_number_rooms")]
dfNormZ <- as.data.frame(scale(numerical_variables[1:8]))
dfNormZ

# E) New data frame named cleaned_housing with specific column names
cleaned_housing<-data.frame(housing$near_bay)
cleaned_housing$h_ocean<-housing$h_ocean
cleaned_housing$inland<-housing$inland
cleaned_housing$near_ocean<-housing$near_ocean
cleaned_housing$island<-housing$island
cleaned_housing$longitude<-dfNormZ$longitude
cleaned_housing$latitude<-dfNormZ$latitude
cleaned_housing$housing_median_age<-dfNormZ$housing_median_age
cleaned_housing$population<-dfNormZ$population
cleaned_housing$households<-dfNormZ$households
cleaned_housing$median_income<-dfNormZ$median_income
cleaned_housing$mean_bedrooms<-dfNormZ$mean_number_bedrooms
cleaned_housing$mean_rooms<-dfNormZ$mean_number_rooms
cleaned_housing$median_house_value<-housing$median_house_value

the_names<-c("NEAR BAY","<1H OCEAN","INLAND","NEAR OCEAN","ISLAND","longitude", "latitude","housing_median_age","population","households","median_income","mean_bedrooms","mean_rooms","median_house_value")
colnames(cleaned_housing)<-the_names


############################################################################
# 4 CREATE TRAINING AND TEST SETS
############################################################################

# A) Create a random sample index 
n <- nrow(cleaned_housing)    # Number of observations
ntrain <- round(n*0.7)        # 70% for training set
set.seed(314)                 # Set seed for reproducible results
tindex <- sample(n, ntrain)   # Create an index


# B) Create training set named train consisting of 70% of the rows of the cleaned_housing data frame
train_housing <- cleaned_housing[tindex,]   


# C) Create a test set named test consisting of 30% of the rows of the cleaned_housing data frame
test_housing <- cleaned_housing[-tindex,]   

############################################################################
# 5 Supervised Machine Learning - Regression
############################################################################

# A) separate train into two pieces
#    train_x train_x with all variables except median_house_value
train_x<-train_housing[,-14]
#    train_y numeric vector only with values of median_house value
train_y<-train_housing$median_house_value

install.packages("randomForest")
library(randomForest)

names(rf)

############################################################################
# 6 Evaluating Model Performance
############################################################################


rmse <- function(y_hat, y)
{
  return(sqrt(mean((y_hat-y)^2)))
}

# A) Get the last MSE value, calculate the square root
the_mse <- rf$mse[length(rf$mse)]

rmse_train <- sqrt(the_mse)

# B) Split the test set create test_x and test_y. Use predict() using the trained model rf along with test_x in order
#   to calculate a vector of predicted median house values
test_x<-test_housing[,-14]
test_y<-test_housing$median_house_value

prediction<- predict(rf,newdata=test_x, type="class")

# C) calculate RMSE for the test set using the vector of predicted median house values and test_y 
rmse_test = rmse(prediction, test_y)
print(rmse_train-rmse_test) 


# D) How does the test set RMSE compare with the training set RMS?
#    The RMSEs are very similar, the difference is 1,273 which is a very low percentage of difference considering the median price
#    of the houses. That means that our model is not overfit and it making good predictions



# D) run the variable importance plot with varImpPlot()
varImpPlot(rf)

