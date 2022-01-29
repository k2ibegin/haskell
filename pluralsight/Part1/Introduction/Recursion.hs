-- power of 2
-- pow2 n =
--   if n == 0
--     then 1
--     else 2 * pow2 (n - 1)

-- repeat a string
-- repeatString str n =
--   if n == 0
--     then ""
--     else str ++ repeatString str (n -1)

-- in general if you really need a loop in haskell,
-- you basically need recursion or can change iteration to recursion e.g. following
pow2 n = pow2iter n 1 0

pow2iter n x i =
  if i < n
    then pow2iter n (x * 2) (i + 1)
    else x