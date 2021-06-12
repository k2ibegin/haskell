import Data.List
import System.IO

-- sum of 1000 numbers
sumOfNums = sum [1..1000]

-- modulus
modEx = mod 5 4
modAlternativeEx = 5 `mod` 4

-- number shown as negative number in parenthesis
negNumEx = 5 + (-4)

-- sqrt example
num9 = 9 :: Int
sqrt9 = sqrt (fromIntegral num9)