-- can hold many different types
x = (1, "hello")

-- can also have more than two elements
y = (1, "kuldeep", 23)

-- returning tuples
headAndLengthOfList list = (head list, length list)

-- access first and second element of a pair
-- fst, snd

-- big tuples: more than 3 or 4 elements long, or passed around different parts of large application
-- in this case better consider custom data type