SELECT 
    COUNT(*) AS Total_Transactions,
    COUNT(DISTINCT CustomerID) AS Unique_Customers,
    SUM(Quantity) AS Total_Units_Sold,
    ROUND(AVG(UnitPrice), 2) AS Average_Item_Price,
    ROUND(SUM(TotalPrice), 2) AS Total_Gross_Revenue
FROM [dbo].[Dataset for Data Analytics (3)];



SELECT 
    ReferralSource,
    COUNT(*) AS Total_Conversions,
    SUM(TotalPrice) AS Total_Revenue_Generated,
    AVG(TotalPrice) AS Average_Order_Value
FROM [dbo].[Dataset for Data Analytics (3)]
WHERE ReferralSource IS NOT NULL
GROUP BY ReferralSource
ORDER BY Total_Revenue_Generated DESC;


SELECT 
    OrderStatus,
    COUNT(*) AS Total_Orders,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM [dbo].[Dataset for Data Analytics (3)]), 2) AS Percentage_Share
FROM [dbo].[Dataset for Data Analytics (3)]
GROUP BY OrderStatus
ORDER BY Total_Orders DESC;

SELECT 
    Product,
    COUNT(*) AS Number_of_Orders,
    SUM(Quantity) AS Total_Units_Sold,
    SUM(TotalPrice) AS Total_Product_Revenue
FROM [dbo].[Dataset for Data Analytics (3)]
GROUP BY Product
ORDER BY Total_Product_Revenue DESC;