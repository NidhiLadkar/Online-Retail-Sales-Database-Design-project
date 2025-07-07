SELECT * FROM Customers;
SELECT 
  Products.ProductID,
  Products.ProductName,
  Products.Price,
  Categories.CategoryName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID;
SELECT 
  Orders.OrderID,
  Customers.Name AS CustomerName,
  Orders.OrderDate,
  Orders.TotalAmount
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
SELECT 
  Orders.OrderID,
  Customers.Name AS Customer,
  Products.ProductName,
  OrderItems.Quantity
FROM OrderItems
JOIN Orders ON OrderItems.OrderID = Orders.OrderID
JOIN Products ON OrderItems.ProductID = Products.ProductID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
SELECT 
  Customers.Name AS Customer,
  COUNT(Orders.OrderID) AS TotalOrders,
  SUM(Orders.TotalAmount) AS TotalSpent
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID;
SELECT 
  Products.ProductName,
  SUM(OrderItems.Quantity) AS TotalQuantitySold
FROM OrderItems
JOIN Products ON OrderItems.ProductID = Products.ProductID
GROUP BY Products.ProductID;
