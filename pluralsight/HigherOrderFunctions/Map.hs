-- apply a function to each element of a list
mapLength = map length ["hello", "kuldeep", "here"]

-- adds one to every element of a list, note that following is a partial application of map function
mapAddOne = map (1 +)

-- alternatively we could use as following,
mapAddOne' = map (1 +) [2, 3, 4]

-- using partial application of map
mapMultiplyWithTwo = map (2 *)

-- alternatively
mapMultiplyWithTwo' = map (2 *) [2, 3, 4]
