use northwind;

select 
	concat(
			FirstName
            , ' '
            , LastName
	)
as Fullname
    
from Employees

WHERE Title LIKE '%Manager%';