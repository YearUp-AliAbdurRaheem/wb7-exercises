# ------------------------------------------------------------------- #
# 1. Add a new supplier.                                              #
# 2. Add a new product provided by that supplier                      #
# 3. List all products and their suppliers.                           #
# 4. Raise the price of your new product by 15%.                      #
# 5. List the products and prices of all products from that supplier. #
# 6. Delete the new product.                                          #
# 7. Delete the new supplier.                                         #
# 8. List all products.                                               #
# 9. List all suppliers.                                              #
# ------------------------------------------------------------------- #
USE northwind;

# ---------------------- #
# 1. Add a new supplier. #
# ---------------------- #
INSERT INTO 
    Suppliers (
        SupplierID
        , CompanyName
        , ContactName
        , ContactTitle
        , Address
        , City
        , Region
        , PostalCode
        , Country
        , Phone
        , Fax
        , HomePage
    ) 
VALUES 
    (LAST_INSERT_ID() -- This auto-increments the SupplierID
    , 'Not Coke Co'
    , 'Johnathan Doe'
    , 'CEO'
    , '33000 Flatbush Ave'
    , 'Brooklyn'
    , 'NY'
    , '11225'
    , 'USA'
    , '123-456-7890'
    , '098-765-4321'
    , NULL
    );

# ---------------------------------------------- #
# 2. Add a new product provided by that supplier #
# ---------------------------------------------- #
INSERT INTO 
    Products (
        ProductName
        , SupplierID
        , CategoryID
        , QuantityPerUnit
        , UnitPrice
        , UnitsInStock
        , UnitsOnOrder
        , ReorderLevel
        , Discontinued
    ) 
VALUES 
    (
    'Powdered Sugar'
    , 30
    , 3
    , '1 gram'
    , 200.00
    , 100
    , 150
    , 25
    , 0
    );

# ----------------------------------------- #
# 3. List all products and their suppliers. #
# ----------------------------------------- #
SELECT 
    Products.ProductName
    , Suppliers.CompanyName
FROM 
    Products
INNER JOIN 
    Suppliers 
ON 
    Products.SupplierID = Suppliers.SupplierID;

# ---------------------------------------------- #
# 4. Raise the price of your new product by 15%. #
# ---------------------------------------------- #
UPDATE 
    Products
SET 
    UnitPrice = UnitPrice * 1.15
WHERE 
    ProductName = 'Powdered Sugar';

# ----------------------------------------------- #
# 5. List the products and prices of all products #
# ----------------------------------------------- #
SELECT 
    ProductName
    , UnitPrice
FROM 
    Products;

# -------------------------- #
# 6. Delete the new product. #
# -------------------------- #
DELETE FROM 
    Products
WHERE 
    ProductName = 'Powdered Sugar';

# ---------------------------- #
# 7. Delete the new supplier.  #
# ---------------------------- #
DELETE FROM 
    Suppliers
WHERE 
    CompanyName = 'Not Coke Co';

# --------------------- #
# 8. List all products. #
# --------------------- #
SELECT 
    ProductName
FROM 
    Products;

# ---------------------- #
# 9. List all suppliers. #
# ---------------------- #
SELECT 
    CompanyName
FROM 
    Suppliers;
    