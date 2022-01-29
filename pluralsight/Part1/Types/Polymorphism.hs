-- :t length will give following
-- length :: [a] -> Int
-- a is a place holder for any type , it is called a type variable. Compiler figures out what type a needs to be

-- polymorphic function -- a function with a type variable
-- not oops polymorphism
-- Similar to c# generics

-- How does Haskell know if a variable is a type variable and not some actual type?
-- start with lower case a,b, x, foo, hello_123
-- Concrete types - start with Upper case e.g. Int, Integer, Char, Double