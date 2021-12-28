-- operators are functions in haskell , e.g. ++,*,:,+
-- to use them as functions just put paranthesis around operator (++)
-- (+) 5 3 will give 8

-- this makes it easier to pass these operators to higher order functions
pass_3_4 f = f 3 4

-- pass_3_4 (+) will return 7

-- also easy to define new operators
-- adding together a pair of numbers, like 2 d vectors
(a, b) .+ (c, d) = (a + b, c + d)

-- partially applying operators
plus1 = (+) 1

-- right side of (1 +) is going to be function argument while left side of + is 1
plus1' = (1 +)

-- left side of (+ 1) is going to be function argument while right side of + is 1
plus1'' = (+ 1)

-- turn function into operators
-- mod 10 2 is said as mod 10 2 but as function
-- 10 `mod` 2  whereas mod as operator now under the single backquotes