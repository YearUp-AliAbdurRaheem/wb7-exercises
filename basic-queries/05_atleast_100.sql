use northwind;

select ProductName
from Products
where UnitsInStock >= 100
order by UnitPrice desc;