foo x y z = x + y + z

foo_1_2 = foo 1 2

-- foo_1_2 3 will result into 6

-- important : arguments must be given in order
-- i
pass x f = f x

pass3 = pass 3