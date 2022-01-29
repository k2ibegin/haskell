-- haskell type system
-- static type (lots of compile time errors, few run time errors)
-- Types are inferred
--      Dont have to write out explicit types
--      Explicit types communicate with people, checked by compiler
-- same code can work for many different types

-- -> is a way of haskell to note function type a -> b, function that takes a as parameter and returns type b
-- a -> b -> c means, function takes two parameters a and b and returns c

-- functions can be partially applied
-- a -> b -> c = a -> (b -> c) -- function takes b as a parametr and returns c and takes a as parameter and returns c
