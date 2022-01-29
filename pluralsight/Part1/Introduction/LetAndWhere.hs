-- in keyword marks the sub expression
-- let binding, a is replaced by the value it is bound to . in following with 3
withLetSeven =
  let a = 3
   in 2 * a + 1

fancyNine =
  let x = 1
      y = 2
   in x + y

-- count number of even numbers in the list
removeOdd [] = []
removeOdd (x : xs)
  | mod x 2 == 0 = x : removeOdd xs
  | otherwise = removeOdd xs

countEvenNums [] = 0
countEvenNums nums =
  let evenNums = removeOdd nums
   in length evenNums

-- TO DO how to do above via some counter variable

-- Where Binding
fancyNine' = x + y
  where
    x = 1
    y = 2

-- unlike let bindings, where bindings must be associated with a function definition
-- following is not allowed, i.e where in sub expression
-- fancyTen = 2 * (a + 1 where a = 3)
-- what works is following
fancyTen = 2 * (let a = 3 in a + 4)

-- Where - top down (goes at the highest level first)
-- Let - bottom up (choose individual binding first)
-- depending upon situation one way or another might be more intiutive