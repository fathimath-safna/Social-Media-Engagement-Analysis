# **Social-Media-Engagement-Analysis**

> A multi-tool analysis of social media engagement trends across platforms, post types, timings, and audience demographics using **Python**, **R**, and **Tableau**.

---

## **Overview**
This project explores how engagement metrics—Likes, Comments, Shares, Impressions, and Engagement Rate—vary across different social media platforms.  
It identifies patterns based on platform, post type, timing, audience demographics, and sentiment, providing actionable insights for marketers and social media managers.

---

## **Key Insights**
- Instagram and Facebook were the most used platforms, but Instagram had slightly better engagement.  
- Images and videos got the most likes and comments.  
- Posts shared in the afternoon and on weekdays (especially Mondays) performed best.  
- The age group **25–34** was the most active, followed by **18–24**.  
- Positive posts did better than neutral or negative ones.  
- USA, India, and Brazil had the most audience activity.  
- Likes were the most common interaction, much higher than comments and shares.  

---

## **Tech Stack**
- **Python** – Data cleaning, preprocessing, EDA (`pandas`, `matplotlib`, `seaborn`, `plotly`)  
- **R Programming** – Statistical testing (`t.test`, `aov`, `chisq.test`, Z-test, F-test)  
- **Tableau** – Interactive dashboards & KPI visualization  

---

## **Dashboard**
The **Tableau dashboard** includes:
- **KPI cards** for total likes, comments, shares, and the average engagement rate  
- **Filters** for Platform and Year  
- **Trends** of likes, comments, and shares over time  
- **Demographics** with engagement by age group and gender  
- **Engagement across time periods** (morning, afternoon, evening, night)  
 <img width="1834" height="1057" alt="Screenshot 2025-07-31 165324" src="https://github.com/user-attachments/assets/a8b058d5-47da-48c2-86b3-d9c3abc0122f" />
  

---

## **Dataset**
- **Source**: [Kaggle – Social Media Engagement Report Dataset](https://www.kaggle.com/datasets/username/social-media-engagement-report)  
- **Size**: Post-level metrics across multiple platforms  
- **Key Columns**:
  - `Platform` – Facebook, Instagram, LinkedIn, Twitter, etc.  
  - `Post Type` – Image, Video, Link, Text  
  - `Likes`, `Comments`, `Shares` – Engagement metrics  
  - `Impressions`, `Reach` – Visibility metrics  
  - `Engagement Rate` – Total interactions ÷ impressions  
  - `Audience Gender` – Male, Female, Other  
  - `Post Time`, `Weekday` – Posting time information  
  - `Sentiment` – Positive, Neutral, Negative  

