foo x y z = x + y + z

-- foo_1_2 3 will result into 6
-- in following we applied only two arguments to foo and define this as foo_1_2
-- now when we call foo_1_2 3 the output will be 6, as we can see we could apply only two arguments to foo and this is not a compilation error
-- however, we must pass third argument when we invoke foo_1_2 otherwise it will be runtime error.
-- e.g. on java we can not pass just two arguments to foo if it is defined as three arguments
foo_1_2 = foo 1 2

-- important : arguments must be given in order

pass x f = f x

pass3 = pass 3