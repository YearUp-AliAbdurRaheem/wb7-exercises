use northwind;

select
	ProductID
    , ProductName
    , UnitsOnOrder

from Products

where 
	UnitsInStock = 0
    and UnitsOnOrder >= 1
    
order by ProductName;