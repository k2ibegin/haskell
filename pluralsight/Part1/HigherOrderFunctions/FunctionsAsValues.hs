-- functions themselves are  values that can be passed around or created on the fly on return from function
-- function that accepts a function OR return a function are called higher order function

-- pass3 takes f as function, whereas f is a function that takes 3 as argument as returns result
pass3 f = f 3

add1 x = x + 1

-- compose function outputs 7 if x is 3
compose f g x = f (g x)

--alternative way - outputs 8 if x is 3
compose' f g x = g (f x)

mult2 x = 2 * x

-- dynamic functions, always return same value
always7 x = 7

always7' = const 7