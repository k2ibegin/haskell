-- type declaration is not necessary
str :: [Char]
str = "hello"

-- foo is  a function that takes int and returns an int
foo :: Int -> Int
foo x = 2 * x

cuboidVolume :: Int -> Int -> Int -> Int
cuboidVolume x y z = x * y * z

-- Type annotation is usually not needed as compiler is very smart
-- y' = 3 + 2.1 is valid

-- when to use explicit types

-- 1. communicating with people as  functions are pure in haskell , soemthing like class diagram in oops
-- mystery :: [Char] -> Int

-- 2. tracking down compiler errors e.g.

-- error scenario where error is not so clear
-- whats_wrong = x + y
--   where
--     x = length "hello"
--     y = 6 / 2

-- NOTE: in both cases above and below VS code shows same error, nevertheless, this is one scenario when this could be helpful
-- correct error shown by compiler in following case shows "fractional division"
-- as haskell defines division operator for doubles
-- whats_wrong = x + y
--   where
--     x :: Int
--     x = length "hello"
--     y :: Int
--     y = 6 / 2

-- 3. Help the compiler
-- following compiler can not know what the intermediate result is that will be input for show
-- x = show (read "123")

x = show (read "3.45" :: Double)

-- 4. Optimizing performance
-- dont optimize until you have to e.g. in some cases you can make code slightly faster