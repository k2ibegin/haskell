-- using case expressions instead of pattern matching
-- which one you choose is based on your style preference
double nums = case nums of
  [] -> []
  (x : xs) -> (2 * x) : (double xs)

removeOdd [] = []
removeOdd (x : xs)
  | mod x 2 == 0 = x : removeOdd xs
  | otherwise = removeOdd xs

-- return true if any of the numbers in a list are even, other wise false
anyEven nums = case removeOdd nums of
  [] -> False
  (x : xs) -> True

-- you can not use guards in case expressions , use plain old if expression instead