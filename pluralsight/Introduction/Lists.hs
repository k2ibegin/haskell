x = [1, 2, 3]

empty = []

-- : operator is cons operator, it allows to prepend item to a list
y = 0 : x -- [0,1,2,3]

x' = 1 : (2 : (3 : []))

y' = 0 : x'

addOneItemToEmptyList = 100 : []

-- Strings, strings in haskells are list of characters
-- [1,2,3] ++ [4,5] , the concat operator, it does not update the old list rather creates a new list
-- list must be homogeneous -- invalid  [1, "hello", 2]