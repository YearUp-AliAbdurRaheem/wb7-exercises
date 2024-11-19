use northwind;

select 
	concat(
			FirstName
            , ' '
            , LastName
	)
as Fullname
    
from Employees

WHERE 
	Salary
    
	between
		2000
        and
        2500;