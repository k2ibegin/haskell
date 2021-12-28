-- similar to how fst function is implemented
-- given a pair of tuple, returns first element of tuple
fst' (a, b) = a

snd' (a, b) = b

-- there are two definitions for null
-- returns true if an empty list is passed as argument
null' [] = True
-- returns false as cons operator always prepends x to a list xs, even if xs is empty, there would be minimum one element x in list
null' (x : xs) = False

-- head of a list
-- if head is called on empty list, a cryptic error message will be shown and program will quit
head' (x : xs) = x
-- head' [] = ? to avoid such error we can handle it as following however still it will crash
head' [] = error "head of empty list"

-- Truth is you can not define head in a robust way. If you find yourself needing to use head function as part of pattern matching
-- then ask yourself why ? could i use some other approach ? so that we do not loose robustness
-- we can do everything with pattern matching and not use head or tail function at all

-- using head and tail function to double nums
-- double nums =
--   if null nums
--     then []
--     else 2 * head nums : double (tail nums)

-- using pattern matching do double each element in a list
-- we define two cases, and this is therefore more robust now, as it will never crash
double [] = []
double (x : xs) = 2 * x : (double xs)