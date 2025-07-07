DROP VIEW IF EXISTS CustomerOrderSummary;
DROP VIEW IF EXISTS ProductSalesReport;

CREATE VIEW CustomerOrderSummary AS
SELECT 
  c.CustomerID,
  c.Name AS CustomerName,
  COUNT(o.OrderID) AS TotalOrders,
  SUM(o.TotalAmount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.Name;

CREATE VIEW ProductSalesReport AS
SELECT 
  p.ProductID,
  p.ProductName,
  SUM(oi.Quantity) AS TotalSold,
  SUM(oi.Quantity * p.Price) AS TotalRevenue
FROM Products p
JOIN OrderItems oi ON p.ProductID = oi.ProductID
GROUP BY p.ProductID, p.ProductName;

-- View them
SELECT * FROM CustomerOrderSummary;
SELECT * FROM ProductSalesReport;

