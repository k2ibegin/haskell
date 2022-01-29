-- (.) - function composition, takes two functions and combines them into a new function
-- ($) - takes function and a value and applies the function to the value

-- https://stackoverflow.com/a/54964397/1398461
-- https://stackoverflow.com/a/20540475/1398461

-- following works in prelude but not in editor, compiler error
-- stringLength = length . show

-- same issue here
-- notNull = not . null

-- both functions must have only one argument e.g. f a b = a  + b and g x = 2 * x
-- f . g or g . f, is invalid since f has two arguments

-- application operator
-- f $ x = f x
-- why use operator when you can call the function directly ? ? but useful cases are , such as replace parenthesis
-- make code readable by applying deeply nested paranthesis
-- f $ g x = f(g x)
-- f $ g $ h $ k x = f ( g (h (k x)))

-- other use for application operator is higher order function

mapWithLambdaExpression = map (\f -> f 3) [(+ 1), \x -> 2 * x + 3, (* 2)]

mapWithOperator = map ($ 3) [(+ 1), \x -> 2 * x + 3, (* 2)]

-- applies $ to list of values ,
-- as in each pair e.g. (+1) $ 5 -> f $ g -> f (g (x)) -> apply (+1) function to 5 , which means increase value by 1 hence 6
zipWith' = zipWith ($) [(+ 1), \x -> 2 * x + 3, (* 2)] [5, 6, 8]