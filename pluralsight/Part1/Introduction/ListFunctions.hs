-- double every element in the list
double nums =
  if null nums
    then []
    else 2 * head nums : double (tail nums)

-- remove even numbers from a list
removeEven nums =
  if null nums
    then []
    else
      if mod (head nums) 2 == 0
        then removeEven (tail nums)
        else head nums : removeEven (tail nums)