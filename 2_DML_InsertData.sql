USE ecommerce_db;
INSERT INTO Customers (Name, Email, Address, Phone) VALUES
('Aditi Sharma', 'aditi@example.com', 'Mumbai, India', '9999912345'),
('Rohan Mehta', 'rohan@example.com', 'Pune, India', '9876543210'),
('Sneha Patel', 'sneha@example.com', 'Ahmedabad, India', '9811122233'),
('Arjun Verma', 'arjun@example.com', 'Delhi, India', '9977665544'),
('Pooja Desai', 'pooja@example.com', 'Bangalore, India', '9988776655');
INSERT INTO Categories (CategoryName) VALUES
('Electronics'),
('Clothing'),
('Books');
INSERT INTO Products (ProductName, Price, Stock, CategoryID) VALUES
('Smartphone', 15000.00, 100, 1),
('Laptop', 45000.00, 50, 1),
('T-Shirt', 500.00, 200, 2),
('Jeans', 1200.00, 150, 2),
('Novel - Fiction', 300.00, 80, 3),
('Textbook - SQL', 700.00, 60, 3);
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2024-06-01', 15500.00),
(2, '2024-06-02', 5700.00),
(3, '2024-06-03', 1900.00);
INSERT INTO OrderItems (OrderID, ProductID, Quantity) VALUES
(1, 1, 1), -- Aditi bought Smartphone
(1, 3, 1), -- Aditi bought T-shirt
(2, 2, 1), -- Rohan bought Laptop
(2, 4, 1), -- Rohan bought Jeans
(3, 5, 1), -- Sneha bought Novel
(3, 6, 1); -- Sneha bought SQL textbook
INSERT INTO Payments (OrderID, PaymentDate, Amount, PaymentMethod) VALUES
(1, '2024-06-01', 15500.00, 'Card'),
(2, '2024-06-02', 5700.00, 'UPI'),
(3, '2024-06-03', 1900.00, 'Cash');
