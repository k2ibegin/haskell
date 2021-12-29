-- zip needs an element from both list to make a pair
-- therefore in following throws away 5,6 and no relevant pairs are in first list, outputs [(1,4), (2,3)]
zipTest = zip [1, 2] [4, 3, 5, 6]

-- zipWith : applies - so output is [-2,-2]
zipWithTest = zipWith (-) [1, 2] [3, 4]

-- zipwith custom function
mult3 x y z = x * y * z

-- more functions are available such as zipWith4,
-- in following we need three input lists as it is zipWith3
-- applies mult3 function to each pair from all three lists
-- outputs [28,80,162,280]
zipWithTest' = zipWith3 mult3 [1, 2, 3, 4] [4, 5, 6, 7] [7, 8, 9, 10]