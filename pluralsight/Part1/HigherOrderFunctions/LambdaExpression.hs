-- starts with a backslash, followed by inputs, followed by -> followed by function body
-- define function with lambda body expression applied to zipWith3, instead of defininig plus3 separately
zipWith3Sample = zipWith3 (\x y z -> x + y + z)

zipWithTest' = zipWith3Sample [1, 2, 3] [4, 5, 6] [7, 8, 9]

-- map with lambdaexpression to convert each element into an odd number
mapDouble = map (\x -> 2 * x + 1)

mapTest' = mapDouble [2, 4, 6]