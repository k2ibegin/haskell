goodSum :: [Int] -> Int
goodSum [] = 0
goodSum (x : xs) = x + sum xs

-- following will give compiler error, because general type variable "a" could be a string as well

-- badSum :: [a] -> a
-- badSum [] = 0
-- badSum (x : xs) = x + sum xs

-- best way is to let ghci figure it out, e.g.
-- :t sum
-- Num a => [a] -> a
--- left of arrow is constraint on type variable .. Num constraint says that the left of  => has to support
-- 0 (on empty array) and have the ability to work with sum function ( a has to be of Num type class)

-- Num is a type class which can do numeric things, (any type class means that which can do something)
-- Num is a type class which can take a type variable a (list of a) and returns a type a

-- a function can have multiple type constraints
-- a type variable has typeClass of Num type and also should be in Show type class
showSum :: (Num a, Show a) => [a] -> String
showSum xs = show (sum xs)
