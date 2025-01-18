# Supervised-Machine-Learning
Different projects related with Supervised Machine Learning


Based on my experience working with different models some considerations of Regression or Classification models that can be used with Supervised Models

## Regression Models

| Algorithm | Type | Pros | Cons | How to Measure |
| --- | --- | --- | --- | ---|

| Linear Regression | Supervised | • Easy to understand & explain<br>• Fast to train<br>• Good baseline model | • Assumes linear relationship<br>• Sensitive to outliers<br>• Can't handle missing values | • R-squared (R²)<br>• MSE<br>• RMSE |
| Decision Tree Regression | Supervised | • Handles non-linear patterns<br>• No scaling needed<br>• Handles missing values | • Prone to overfitting<br>• Unstable predictions<br>• High variance | • MAE<br>• RMSE<br>• R²Random | 
| Forest Regression | Supervised | • Less overfitting<br>• Handles outliers well<br>• Good feature importance | • Slower training<br>• Resource intensive<br>• Less interpretable | • RMSE<br>• R²<br>• OOB score | 
| XGBoost Regression | Supervised• High performance<br>• Handles missing values<br>• Built-in regularization | • Many hyperparameters<br>• Can overfit<br>• Computationally intensive | • RMSE<br>• MAE<br>• R² |
| Gradient Boosting Regression | Supervised | • Usually better than RF<br>• Good with outliers<br>• Feature importance | • Sequential (slow) training<br>• Sensitive to noisy data<br>• Hard to tune | • RMSE<br>• R²<br>• MAE |
| Ridge Regression | Supervised | • Handles multicollinearity<br>• Reduces overfitting<br>• Good with many features | • Still assumes linearity<br>• Needs feature scaling<br>• Not for feature selection | • R²<br>• MSE<br>• RMSE |
| Lasso Regression| Supervised| • Feature selection<br>• Reduces overfitting<br>• Handles multicollinearity | • May remove important features<br>• Needs feature scaling<br>• Still assumes linearity | • R²<br>• MSE<br>• RMSE |
