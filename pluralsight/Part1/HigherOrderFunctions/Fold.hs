-- combine all the values in a list to a single value
-- two types - foldl, foldr

-- combines an accumulator value (initially 0) with the list values
foldlTest = foldl (+) 0 [1, 2, 3, 4]

-- test to check how foldl is adding
-- s: string and x: number
showPlus s x = "(" ++ s ++ "+" ++ (show x) ++ ")"

-- following outputs "((((0+1)+2)+3)+4)"
showAddingInFoldl = foldl showPlus "0" [1, 2, 3, 4]

foldrTest = foldr (+) 1 [1, 2, 3, 4]

-- new version as accumulator string is now the right hand argument
showPlus' x s = "(" ++ (show x) ++ "+" ++ s ++ ")"

-- following outputs "(1+(2+(3+(4+0))))"
showAddingInFoldr = foldr showPlus' "0" [1, 2, 3, 4]

-- as can be seen above order does not matter in case of addition but in case of subtraction this will matter
-- outputs -10
foldlSubtract = foldl (-) 0 [1, 2, 3, 4]

-- outputs -2
foldrSubtract = foldr (-) 0 [1, 2, 3, 4]

--foldl is somewhat slightly faster, becasue it is tail recursive, that compiler can optimize
-- foldr can be used on infinite list (thanks to lazy function evaluation) but foldl can not be used on infinite list
-- https://stackoverflow.com/questions/27682067/why-does-foldr-work-on-infinite-lists-in-haskell-but-foldl-doesnt

intsFrom n = n : intsFrom (n + 1)

ints = intsFrom 1

foldrOnIntsFrom = foldr (+) 0 ints

foldlOnIntsFrom = foldl (+) 0 (take 10 ints)