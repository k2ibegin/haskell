-- give RGB obvious equality operator
data RGB = RGB Int Int Int
  deriving (Eq)

-- Deriving type class instances
-- deriving only works with certain classes e.g. Eq
-- Ord <, > <= , >=,
-- Show
-- Read
-- provides read class

-- Defining Type Classes

class Eq a where
  (==) :: a -> a -> Bool
  (/=) :: a -> a -> Bool
