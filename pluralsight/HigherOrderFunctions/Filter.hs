-- creates a new list by filtering by testing each element based on some boolean (function)

notNull xs = not (null xs)

filterEmptyOnes = filter notNull ["", "Kuldeep", "", "adhikari"]

-- filter out even number from list
isEven x = x `mod` 2 == 0

removeOdd = filter isEven

-- combine map and filter
combineMapFilter = map snd (filter fst [(True, 1), (False, 2), (True, 12)])