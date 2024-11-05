
setwd("D:\\School Workspace\\Source Codes\\R Language\\Types-of-Linear-Regression")



df <- read.csv("retaildata.csv")


# # Convert Name to character type (if it's a factor)
# df_healthcare$Name <- as.character(df_healthcare$Name)

# # Remove any leading/trailing whitespace
# df_healthcare$Name <- trimws(df_healthcare$Name)

# # Convert all names to lowercase first (to ensure proper capitalization)
# df_healthcare$Name <- tolower(df_healthcare$Name)

# # Now apply toTitleCase to capitalize the first letter of each word
# df_healthcare$Name <- toTitleCase(df_healthcare$Name)


# View the result
# View(df_healthcare$Name)

View(df)

profit <- as.double(df$Profit)
sales <- as.integer(df$Sales)
# region <- as.integer(df$Region)


# # print(head(profit, 5))
linearReg <- lm(sales ~ profit, data = df)

summary(linearReg)

# Create a scatter plot of 'Sales' vs 'Profit'
plot(df$Profit, df$Sales, main="Sales vs Profit", xlab="Profit", ylab="Sales", pch=19)

# Add the regression line to the plot
abline(linearReg, col="blue", lwd=2)  # Add the linear regression line in blue



