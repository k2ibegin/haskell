-- no such gurantee of when functions are evaluated
-- foo (alpha 1) (beta 2)

-- Lazy infinite lists
intsFrom n = n : intsFrom (n + 1)

ints = intsFrom 1

removeOdd [] = []
removeOdd (x : xs)
  | mod x 2 == 0 = x : removeOdd xs
  | otherwise = removeOdd xs

intsFromEven = removeOdd ints

-- below will return first 10 even elements in the list
-- take 10 intsFromEven

-- will return first 10 elements in ints list
-- take 10 ints

-- following returns 1
-- head ints

-- as we can see from above haskell does lazy evaluation and waits until we execute things such as take X <list>