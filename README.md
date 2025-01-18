# Supervised-Machine-Learning
Different projects related with Supervised Machine Learning


Based on my experience working with different models some considerations of Regression or Classification models that can be used with Supervised Models

## Regression Models

| Algorithm | Type | Pros | Cons | How to Measure |
| --- | --- | --- | --- | ---|
| Linear Regression | Supervised | • Easy to understand & explain<br>• Fast to train<br>• Good baseline model | • Assumes linear relationship<br>• Sensitive to outliers<br>• Can't handle missing values | • R-squared (R²)<br>• MSE<br>• RMSE |
| Decision Tree Regression | Supervised | • Handles non-linear patterns<br>• No scaling needed<br>• Handles missing values | • Prone to overfitting<br>• Unstable predictions<br>• High variance | • MAE<br>• RMSE<br>• R² | 
| Random Forest Regression | Supervised | • Less overfitting<br>• Handles outliers well<br>• Good feature importance | • Slower training<br>• Resource intensive<br>• Less interpretable | • RMSE<br>• R²<br>• OOB score | 
| XGBoost Regression | Supervised | • High performance<br>• Handles missing values<br>• Built-in regularization | • Many hyperparameters<br>• Can overfit<br>• Computationally intensive | • RMSE<br>• MAE<br>• R² |
| Gradient Boosting Regression | Supervised | • Usually better than RF<br>• Good with outliers<br>• Feature importance | • Sequential (slow) training<br>• Sensitive to noisy data<br>• Hard to tune | • RMSE<br>• R²<br>• MAE |
| Ridge Regression | Supervised | • Handles multicollinearity<br>• Reduces overfitting<br>• Good with many features | • Still assumes linearity<br>• Needs feature scaling<br>• Not for feature selection | • R²<br>• MSE<br>• RMSE |
| Lasso Regression| Supervised | • Feature selection<br>• Reduces overfitting<br>• Handles multicollinearity | • May remove important features<br>• Needs feature scaling<br>• Still assumes linearity | • R²<br>• MSE<br>• RMSE |

## Classification Models 

| Algorithm | Type | Pros | Cons | How to Measure |
| --- | --- | --- | --- | ---|
| Logistic Regression | Supervised | • Simple to implement<br>• Fast training<br>• Highly interpretable | • Only linear boundaries<br>• Needs feature scaling<br>• Limited to binary/linear | • Accuracy<br>• ROC-AUC<br>• Precision-Recall | 
| Random Forest Classifier | Supervised | • Handles non-linear data<br>• Less overfitting<br>• Feature importance | • Slow training<br>• Black box decisions<br>• Memory intensive | • Accuracy<br>• F1-Score<br>• Confusion Matrix |
| XGBoost Classifier | Supervised | • High performance<br>• Handles imbalanced data<br>• Good with missing values | • Complex tuning<br>• Can overfit<br>• Resource intensive | • Accuracy<br>• F1-Score<br>• AUC-ROC | 
| Support Vector Machine | Supervised | • Works in high dimensions<br>• Memory efficient<br>• Different kernel options | • Sensitive to scaling<br>• Slow for large datasets<br>• Hard to interpret | • Accuracy<br>• F1-Score<br>• ROC-AUC | 
| K-Nearest Neighbors | Both* | • No training needed<br>• Simple to understand<br>• Works with non-linear | • Slow predictions<br>• Needs feature scaling<br>• Memory intensive | • Accuracy<br>• F1-Score<br>• Precision-Recall |
| LightGBM | Supervised | • Fast training<br>• Low memory usage<br>• Good with large data | • Can overfit small data<br>• Sensitive to parameters<br>• Leaf-wise splits risk | • Accuracy<br>• AUC<br>• Logloss |
| CatBoost | Supervised | • Handles categorical data<br>• Less parameter tuning<br>• Good with imbalanced data | • Slower than LightGBM<br>• Memory intensive<br>• New/less community | • Accuracy<br>• AUC-ROC<br>• F1-Score |

