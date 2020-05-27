-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select ProductName, CategoryName
from product as p join category as c on p.CategoryId = c.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select id, CompanyName
from [order] as o join shipper as s on o.shipvia = s.id
where o.OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select ProductName, UnitsOnOrder
from Product as p join [OrderDetail] as od on od.ProductId = p.ID join [Order]
    on od.OrderID = [Order].ID
where OrderID = '10251'
order by ProductName
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select id as OrderID, CompanyName as Customer, LastName as EmployeeLastName
from [Order] as o
    join Customer as c on c.id = o.CustomerId
    join Employee as e on e.id = o.EmployeeId

--Stretch

--Displays CategoryName and a new column called Count that shows how many products are in each category. Shows 8 records.

--Not Working

SELECT CategoryName, Count(Categories.CategoryID)
FROM Categories JOIN Products
    ON Categories.CategoryID = Products.CategoryID