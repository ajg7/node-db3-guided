SELECT Orders.OrderId, Customers.CustomerName, Orders.OrderDate
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
ORDER BY Orders.CustomerId;

-- join orders to Employees and show me the first and last name of the employee who sold for each order

SELECT orders.orderId, orders.orderDate, employees.firstName, employees.lastName
FROM orders
JOIN employees ON orders.EmployeeId = Employees.EmployeeId

--list all orders including employee and customer data for each order
select *
from Orders
join Employees on Orders.EmployeeID = Employees.EmployeeID
join Customers on Orders.CustomerID = Customers.CustomerID
order by Orders.EmployeeID

-- Making an alias

select *
from Orders as O
join Employees as E on O.EmployeeID = E.EmployeeID
join Customers as C on O.CustomerID = C.CustomerID
order by O.EmployeeID

-- LEFT JOIN: list all customers and order data for each customer

select c.CustomerId as Id, c.CustomerName as Customer, c.Country, o.OrderID, o.OrderDate 
from customers as c
left join orders as o ON c.customerId = o.customerId
order by c.customerId

-- list all customers without orders

select c.CustomerId as Id, c.CustomerName as Customer, c.Country, o.OrderID, o.OrderDate 
from customers as c
left join orders as o ON c.customerId = o.customerId
where o.OrderId is null
order by c.customerId

-- count
select c.CustomerId as Id, c.CustomerName as Customer, c.Country, count(o.orderId) as [Orders]
from customers as c
left join orders as o on c.customerId = o.customerId
group by c.CustomerId, c.CustomerName, c.Country