SELECT * FROM Sales.`sales dataset`;

SELECT EXTRACT(MONTH FROM `Order Date`) AS month FROM Sales.`sales dataset`;

select city from Sales.`sales dataset` group by city;

select city, State from Sales.`sales dataset` group by city,State;

select State from Sales.`sales dataset` group by State;

SELECT 
    SUM(Amount * Quantity) AS total_revenue
FROM 
    Sales.`sales dataset`;
 
 
SELECT 
    COUNT(DISTINCT `Order ID`) AS sales_volume
FROM 
    Sales.`sales dataset`;


SELECT
    CustomerName,
    COUNT(DISTINCT `Order ID`) AS sales_volume
FROM 
    Sales.`sales dataset`
GROUP BY 
    CustomerName   
ORDER BY 
    sales_volume DESC;

    
SELECT 
    MONTH(`Order Date`) AS month,
    SUM(Amount * Quantity) AS revenue
FROM 
    Sales.`sales dataset`
WHERE 
    `Order Date` BETWEEN '2023-01-01' AND '2023-06-30'
GROUP BY 
    MONTH(`Order Date`)
ORDER BY 
    month;

    


