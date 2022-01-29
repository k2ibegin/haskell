-- a new type definition
-- new type defines a synonym for existsing type that is not interchangeable
-- it would be nice to not replace int as customerid or vice versa, also not to allow addition of customerId

-- a constructor that creates a customer Id of int type, representation type comes last e.g. Int here
newtype CustomerId = MakeCustomerId Int

-- bad example
-- badCustomer :: CustomerId
-- badCustomer = 12

-- good example
customer :: CustomerId
customer = MakeCustomerId 13

-- to get back simply do as
-- use pattern matching, the only way customerid could be created by calling constructor on an Int
-- therefore to get back the id, we do as following, we say
customerToInt :: CustomerId -> Int
customerToInt (MakeCustomerId i) = i

-- you can make the constructor name same as type name, this is usually seen a lot
newtype CustomerId' = CustomerId' Int

customerToInt' :: CustomerId' -> Int
customerToInt' (CustomerId' i) = i

-- summary
-- Create a new type represented by a existing type, but not is interchangeable
-- new type and representation cannot be mixed up  (e.g. not use customerId in place of Int and vice versa)
-- above helps add semanting meaning to the code, checked by compiler