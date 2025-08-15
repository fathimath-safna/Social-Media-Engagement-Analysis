# Load libraries
##install.packages("readxl")
##install.packages("dplyr")
library(readxl)
library(dplyr)

# Load the Excel file
edata <- read_excel("C:/Users/User/Downloads/social_media_engagement_data.xlsx")

# Clean column names: remove leading/trailing spaces
names(edata) <- trimws(names(edata))

# View first few rows and column names
head(edata)
colnames(edata)

# Filter Facebook and Instagram for t-test and F-test
two_platforms <- filter(edata, Platform %in% c("Facebook", "Instagram"))

## T-test: Facebook vs Instagram
print("T-Test: Engagement Rate between Facebook and Instagram")
t_result <- t.test(`Engagement Rate` ~ Platform, data = two_platforms)
print(t_result)
if (t_result$p.value < 0.05) {
  print("Result: Statistically significant difference (p < 0.05)")
} else {
  print("Result: No statistically significant difference (p ≥ 0.05)")
}

##  F-test: Variance between Facebook and Instagram
print("F-Test: Variance in Engagement Rate between Facebook and Instagram")
f_result <- var.test(`Engagement Rate` ~ Platform, data = two_platforms)
print(f_result)
if (f_result$p.value < 0.05) {
  print("Result: Variance is significantly different (p < 0.05)")
} else {
  print("Result: No significant difference in variance (p ≥ 0.05)")
}

## ANOVA: Engagement Rate across all Platforms
print("ANOVA: Engagement Rate across Platforms")
anova_result <- aov(`Engagement Rate` ~ Platform, data = edata)
anova_summary <- summary(anova_result)
print(anova_summary)
p_val_anova <- anova_summary[[1]]$`Pr(>F)`[1]
if (p_val_anova < 0.05) {
  print("Result: At least one platform differs significantly (p < 0.05)")
} else {
  print("Result: No significant difference across platforms (p ≥ 0.05)")
}


# Create a binary column for high engagement
edata$High_Engagement <- ifelse(edata$`Engagement Rate` > 5, "Yes", "No")

# Filter for just Facebook and Instagram
z_data <- subset(edata, `Platform` %in% c("Facebook", "Instagram"))

# Create 2x2 table
z_tab <- table(z_data$`Platform`, z_data$High_Engagement)
print(z_tab)

# Z-test for difference in proportions
z_test <- prop.test(z_tab[, "Yes"], rowSums(z_tab), correct = FALSE)
print(z_test)

if (z_test$p.value < 0.05) {
  print("Z-Test Result: Statistically significant difference in high engagement between platforms (p < 0.05)")
} else {
  print("Z-Test Result: No statistically significant difference in high engagement (p ≥ 0.05)")
}
# Check for missing values
table(edata$`Platform`, edata$`Post Type`)

# Create contingency table
chi_tab <- table(edata$`Platform`, edata$`Post Type`)

# Run Chi-square test
chi_result <- chisq.test(chi_tab)
print(chi_result)

if (chi_result$p.value < 0.05) {
  print("Chi-Square Result: Significant relationship between platform and post type (p < 0.05)")
} else {
  print("Chi-Square Result: No significant relationship between platform and post type (p ≥ 0.05)")
}
