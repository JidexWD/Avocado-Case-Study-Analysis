# Avocado-Case-Study-Analysis
A Case Study Project 

## Table of Content 
- [Project Overview](#project-overview)
- [Data Source](#data-source)
- [Tools](#tools)
- [Project Structure](#project-structure)
- [Data Analysis](#data-analysis)
- - [Data Visualiation](#data-visualization)
- [Results](#results)
- [Recommendations](#recommendations)

  
## Project Overview 
  You are a junior data analyst working for a business intelligence company. You've been there for six months, and your boss feels you are ready for more responsibility. He has asked you to lead a project for a brand-new client – an avocado distributor. They want you to carry out an analysis on avocado prices using a dataset from Kaggle to provide insights on pricing trends, sales volume, and regional preferences. The goal is to help them make data-driven decisions to maximize their revenue and optimize their inventory strategy based on market demands.
## Data Source
  Avocado prices
  https://www.kaggle.com/datasets/neuromusic/avocado-prices
  
## Tools
  MySQL | Ms Excel | Tableau
  
## Project Structure
  Data
  - Data Collection
     ![image](https://github.com/user-attachments/assets/15747846-8608-489c-8ec2-526ff344852b)



  - Data Overview
    excel spread sheets was used in data overview to get he general understanding of the dataset
     ![image](https://github.com/user-attachments/assets/864b594e-1dba-42db-8fb0-8e7d8a346fb8)


 
  - Data Transfromation
    Mysql was used to perform data transformation. that transformatio can be performed easily with MySQL
     ![image](https://github.com/user-attachments/assets/d6e530f0-4fdc-4c57-93dd-dad5a9cbf83e)

    we can do some data cleaning like checking for missing value.

          SELECT * 
          FROM avocado_shcema.avocado  
          WHERE AveragePrice IS NULL; 
    ![image](https://github.com/user-attachments/assets/385960b9-a1ad-40fb-b159-d69f29787c89)
    



    
## Data Analysis 
  analysis of the dataset was done with sql on the MySQL platform. sql is a perfect tool for carrying out   data analysis and manupulation
  
  ![image](https://github.com/user-attachments/assets/851242f2-5e10-4e08-b3d6-5e6272a8a6c8)


  
  below we can see a code snippet of how sql was used to analze the dataset 

  - Price trend over time analysis
      using AveragePrice column  and year columns to producee information about the dataset
      
        SELECT 
            Year, AVG(AveragePrice) AS AvgPrice
        FROM
            avocado
        GROUP BY Year
        ORDER BY Year;

  
 - price and Volumn by Region
   that is average price  by region and total volume per region
   
        SELECT
	          region,
            AVG(AveragePrice) AS AvgPrice,
            SUM(TotalVolume) AS TotalVolume
        FROM 
	          avocado
        GROUP BY region
        ORDER BY AvgPrice DESC;
       

  - Comparison of Organic vs. Conventional


         SELECT 
	           type,
              AVG(AveragePrice) AS AvgPrice,
              SUM(TotalVolume) AS TotalVolume
        FROM avocado
        GROUP BY type;


  
          

  - Bag Sizes Distribution


          SELECT
	            year,
              region,
              SUM(SmallBags) AS Small,
              SUM(LargeBags) AS Large,
              SUM(XLargeBags) AS XLarge
        FROM avocado
        GROUP BY year, region;
    
                     
## Data Visualization
  - Tableau is one of the best softwares out there to carry our data visuaization. it is able to bring to life both simple and complex visualizations to life.
    https://public.tableau.com/app/profile/jide.ewuola/vizzes
    
    

  - Price Trend Over Time:
      ![Sheet 1](https://github.com/user-attachments/assets/3680f251-b192-429b-b132-7ffce8cf3fba)



  - Regional Price Comparison
    ![Sheet 3](https://github.com/user-attachments/assets/c77a12d6-fea4-4e05-b147-4e3939d2cb29)



  - Organic vs. Conventional Comparison
    ![Sheet 2](https://github.com/user-attachments/assets/c23bf96c-c04a-420c-91f3-e603c251b2fc)

    
  - Bag Size Distribution
    ![Sheet 3](https://github.com/user-attachments/assets/c4acd9f2-9623-42f2-baf7-1f8cdc5d3f0d)


    

## Results 
  Average Price Trend Over Time:

  The line chart of average prices over the years shows clear fluctuations. For instance, avocado prices may 
  have increased during certain periods and dipped at others.
  Insight: Seasonal trends are evident, possibly influenced by factors like harvest cycles, market demand, or 
  economic factors. An increasing or decreasing trend might also suggest broader market shifts.
  Regional Price Comparison:

The bar chart comparing average prices by region reveals notable regional price disparities. For instance, regions like California and New York might show higher prices compared to smaller markets.
Insight: Larger urban areas with higher demand often have higher avocado prices. This might be due to logistical costs or higher competition, leading to price variation.
Organic vs. Conventional Comparison:

In comparing organic and conventional avocado prices and sales volumes, organic avocados generally show a higher average price than conventional ones.
Insight: Consumers are willing to pay a premium for organic avocados, indicating a stronger demand for organic products among certain demographics or regions.
Bag Size Distribution:

The stacked bar chart shows how different bag sizes perform across regions and over time. Smaller bags generally have the highest sales volume, especially in urban regions, while large and extra-large bags may see higher sales in regions with larger families or where bulk purchases are more common.
Insight: The preference for smaller bags suggests that consumers often buy avocados in smaller quantities, likely for short-term consumption. Regional differences may reflect local consumer habits, such as individual consumption versus family-oriented purchases.
Sales Volume and Price Relationship:

A further analysis (scatter plot or correlation check) might reveal that while sales volume and price are somewhat correlated, high-volume regions may sometimes show lower prices, potentially due to economies of scale in high-demand areas.
Insight: There isn’t a strict linear relationship between price and volume, indicating that factors like competition and consumer preference affect both independently.

## Recommendations 
   Targeted Marketing for Organic Avocados:

Since organic avocados command a higher price and tend to have dedicated buyers, consider marketing organic options in regions where health-conscious consumers are more prevalent (e.g., urban and suburban areas).
Strategy: Promote organic avocados as a premium product through strategic advertising in urban areas with higher income demographics.
Region-Specific Pricing Strategies:

For regions with high demand but lower prices, like California, evaluate ways to optimize distribution costs or introduce more premium varieties to capitalize on demand.
Strategy: Adjust prices regionally by introducing premium or specialty avocado varieties in high-demand markets. Additionally, explore logistical optimizations to keep prices competitive in lower-demand regions.
Seasonal Promotions and Price Adjustments:

Since the trend shows price fluctuations over the year, consider seasonal promotions during peak harvest times when prices are lower to stimulate demand.
Strategy: Run discounts or promotions during low-price periods to boost sales, potentially expanding to new customers who are price-sensitive.
Adjust Packaging Options Based on Region:

Given that smaller bags are more popular in urban settings, where consumers may have smaller households, focus on single or small-bag packages in cities while promoting large and extra-large bags in suburban and rural markets.
Strategy: Tailor bag sizes to consumer purchasing patterns by region, promoting small bags for individual buyers in cities and larger bags for bulk buyers in suburban and rural regions.
Expand Consumer Education on Avocado Benefits:

To stimulate overall demand, consider campaigns that highlight avocados' health benefits, potentially increasing demand for both organic and conventional types.
Strategy: Use social media, recipe partnerships, and health-focused marketing to encourage regular avocado consumption, targeting health-conscious consumers and those seeking natural, nutrient-dense foods.
Monitor Emerging Trends in Consumer Preferences:

Observing the regional popularity of avocado types and bag sizes could help in predicting shifts in consumer behavior. For instance, as more consumers opt for plant-based diets, demand for avocados may rise.
Strategy: Regularly review and adjust to consumer trends by monitoring sales data and market analysis to meet new demand patterns, especially as dietary preferences evolve.
