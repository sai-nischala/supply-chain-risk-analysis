-- ================================================
-- Supply Chain Risk Analysis
-- Author: [Nischala]
-- Date: May 2026
-- Tool: MySQL
-- ================================================

-- Query 1: Overall Delivery Status Breakdown
SELECT Delivery_Status, 
       COUNT(*) as Total_Orders
FROM supply_chain
GROUP BY Delivery_Status
ORDER BY Total_Orders DESC;

-- Query 2: Late Delivery Rate by Shipping Mode
SELECT Shipping_Mode,
       COUNT(*) as Total_Orders,
       SUM(Late_delivery_risk) as Late_Orders,
       ROUND(SUM(Late_delivery_risk) / COUNT(*) * 100, 1) as Late_Percentage
FROM supply_chain
GROUP BY Shipping_Mode
ORDER BY Late_Percentage DESC;

-- Query 3: Late Delivery Rate by Market
SELECT Market,
       COUNT(*) as Total_Orders,
       SUM(Late_delivery_risk) as Late_Orders,
       ROUND(SUM(Late_delivery_risk) / COUNT(*) * 100, 1) as Late_Percentage
FROM supply_chain
GROUP BY Market
ORDER BY Late_Percentage DESC;

-- Query 4: Shipping Mode Risk Score
SELECT Shipping_Mode,
       COUNT(*) as Total_Orders,
       ROUND(SUM(Late_delivery_risk) / COUNT(*) * 100, 1) as Late_Pct,
       ROUND(AVG(Days_for_shipping_real - Days_for_shipment_scheduled), 2) as Avg_Delay_Days,
       ROUND(
           (SUM(Late_delivery_risk) / COUNT(*) * 100) * 
           (AVG(Days_for_shipping_real - Days_for_shipment_scheduled) + 1)
       , 2) as Risk_Score
FROM supply_chain
GROUP BY Shipping_Mode
ORDER BY Risk_Score DESC;

-- Query 5: Top 10 Riskiest Product Categories
SELECT Category_Name,
       COUNT(*) as Total_Orders,
       ROUND(SUM(Late_delivery_risk) / COUNT(*) * 100, 1) as Late_Pct,
       ROUND(AVG(Days_for_shipping_real - Days_for_shipment_scheduled), 2) as Avg_Delay_Days
FROM supply_chain
GROUP BY Category_Name
ORDER BY Late_Pct DESC
LIMIT 10;