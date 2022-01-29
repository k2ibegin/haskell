-- guards make pattern matching more useful, pattern matching only look at structure of the data
-- guards can look for the values in the data

-- good practice to always use otherwise nevertheless
-- no '=' before guards
-- | after guards
pow2 n
  | n == 0 = 1
  | otherwise = 2 * pow2 (n - 1)


-- removeOdd [] = []
-- removeOdd nums
--  | mod (head nums) 2 == 0   = head nums : removeOdd (tail nums)
--  | otherwise                = removeOdd (tail nums)

 -- with cons operator
removeOdd [] = []
removeOdd (x : xs)
 | mod x 2 == 0   = x : removeOdd xs
 | otherwise      = removeOdd xs
