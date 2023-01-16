-- 1. How many orders were shipped by Speedy Express in total?
SELECT COUNT(*)
FROM Orders
JOIN Shippers
ON Orders.ShipperID = Shippers.ShipperID
WHERE ShipperName = "Speedy Express";

-- Answer = 54


-- 2. What was the last name of the employee with the most orders?
SELECT LastName,COUNT(*) AS Number_of_Orders
FROM Orders
JOIN Employees
ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY LastName
ORDER BY Number_of_Orders DESC
LIMIT 1;

--Answer = Peacock (40 orders)


-- 3. What product was ordered the most by customers in Germany?
SELECT Products.ProductName, Orderdetails.Quantity
FROM Customers JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
JOIN Orderdetails
ON Orders.OrderID = Orderdetails.OrderID
JOIN Products
ON Orderdetails.ProductID = Products.ProductID
WHERE Country = "Germany"
ORDER BY Quantity DESC
LIMIT 1;

--Answer = Steeleye Stout
