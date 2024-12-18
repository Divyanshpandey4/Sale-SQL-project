SELECT COUNT(*) AS Low_Rated_Items
FROM project.shopping_trends
WHERE `Review Rating` < 3;


SELECT Season, COUNT(*) AS Total_Purchases
FROM project.shopping_trends
GROUP BY Season
ORDER BY Total_Purchases DESC;


SELECT Season, Color, COUNT(*) AS Color_Count
FROM project.shopping_trends
GROUP BY Season, Color
ORDER BY Season, Color_Count DESC
limit 7;


SELECT Location, SUM(`Purchase Amount (USD)`) AS Total_Revenue
FROM  project.shopping_trends
GROUP BY Location
ORDER BY Total_Revenue DESC
limit 8;

SELECT Category,round(AVG(`Review Rating`),2) AS Avg_Review_Rating
FROM project.shopping_trends
GROUP BY Category;



SELECT COUNT(DISTINCT `Customer ID`) AS Subscribed_Customers
FROM project.shopping_trends
WHERE `Subscription Status` = 'Yes';



SELECT ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) 
FROM project.shopping_trends)) 
AS Promo_Code_Percentage
FROM project.shopping_trends
WHERE `Promo Code Used` = 'Yes';



SELECT `Shipping Type`, COUNT(`Customer ID`) AS Customer_Count
FROM project.shopping_trends
GROUP BY `Shipping Type`;



SELECT COUNT(*) AS Total_Discounted_Orders
FROM project.shopping_trends
WHERE `Discount Applied` = 'Yes';



SELECT `Payment Method`, COUNT(*) AS Payment_Count
FROM project.shopping_trends
GROUP BY `Payment Method`
ORDER BY Payment_Count DESC;


SELECT AVG(`Purchase Amount (USD)`) AS Avg_Purchase_Amount
FROM project.shopping_trends;


SELECT SUM(`Purchase Amount (USD)`) AS Total_Revenue
FROM project.shopping_trends;


SELECT Season, COUNT(*) AS Total_Purchases
FROM project.shopping_trends
GROUP BY Season
ORDER BY Total_Purchases DESC;


SELECT Category, AVG(`Purchase Amount (USD)`) AS Avg_Item_Price
FROM project.shopping_trends
GROUP BY Category;


SELECT Category, SUM(`Purchase Amount (USD)`) AS Total_Sales
FROM project.shopping_trends
GROUP BY Category
ORDER BY Total_Sales DESC
LIMIT 5;


SELECT `Customer ID`, ROUND(AVG(`Purchase Amount (USD)`), 2) AS Avg_Purchase_Amount
FROM project.shopping_trends
GROUP BY `Customer ID`
LIMIT 5;



SELECT `Customer ID`, SUM(`Purchase Amount (USD)`) AS Total_Spending
FROM project.shopping_trends
GROUP BY `Customer ID`
ORDER BY Total_Spending DESC
LIMIT 5;



SELECT `Customer ID`, COUNT(*) AS Total_Orders
FROM project.shopping_trends
GROUP BY `Customer ID`
ORDER BY Total_Orders DESC;


SELECT Location, COUNT(`Customer ID`) AS Customer_Count
FROM project.shopping_trends
GROUP BY Location
ORDER BY Customer_Count DESC
LIMIT 5;


SELECT COUNT(DISTINCT `Customer ID`) AS Unique_Customers
FROM `project`.`shopping_trends`;




