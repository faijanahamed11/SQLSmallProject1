-- CONTROL FLOW
-- Turning the Query into a stored Procedure
ALTER PROCEDURE GetCustomerSummary @Country NVARCHAR(50) = 'USA'
AS
BEGIN 
--VARIABLES
--Step1: Declare
DECLARE @TotalCustomers INT, @AvgScore FLOAT;


-- Prepare and Cleanup Data (Control Flow)
IF EXISTS (SELECT 1 FROM Sales.Customers WHERE Score IS NULL AND Country = @Country)
BEGIN  
    PRINT('Updating NULL Scores to 0');
    UPDATE Sales.Customers
    SET Score = 0
    WHERE Score IS NULL AND Country = @Country;
END 

ELSE
BEGIN
    PRINT('No NULL Scores found')
END;


SELECT --Step2: Assign Values and remove alias
    @TotalCustomers = COUNT(*),
    @AvgScore = AVG(Score)
FROM Sales.Customers
WHERE Country = @Country;
--Step3: Print Values
PRINT 'Total Customers from '+ @Country + ':' + CAST(@TotalCustomers AS NVARCHAR);
PRINT 'Average Score from ' + @Country + ':' + CAST(@AvgScore AS NVARCHAR);

-- Find the total number of orders and total sales
SELECT 
    COUNT(OrderId) TotalOrders,
    SUM(Sales) TotalSales
FROM Sales.Orders o
JOIN Sales.Customers c 
ON c.CustomerId = o.CustomerID
WHERE c.Country = @Country
END
-- Step-3: Execute the Stored Procedure
EXEC GetCustomerSummary @Country = 'Germany' -- After executing see the results in Messages section.

 