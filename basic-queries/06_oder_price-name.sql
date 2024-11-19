use northwind;

select
	ProductID
    , ProductName
    , UnitsInStock
    , UnitPrice

from Products

where UnitsInStock <= 100

order by 
	UnitPrice desc
    , ProductName;