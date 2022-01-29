-- test if value appears in the list

elem' _ [] = False
elem' x (y : ys)
  | x == y = True
  | otherwise = elem' x ys

-- above == operator can not be used for other stuff such as functions

-- elem :: Eq a => a -> [a] -> Bool
data RGB = RGB Int Int Int

-- name of typeClass Eq and name of the type RGB and then any function that typeclass requires, which is == function in this case
instance Eq RGB where
  (RGB r1 g1 b1) == (RGB r2 g2 b2) =
    (r1 == r2) && (g1 == g2) && (b1 == b2)

-- test
-- elem green colors

-- example of show RGB