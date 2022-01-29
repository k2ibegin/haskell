-- makes code more readable
-- following is a way to define type synonym
type String = [Char]

-- 2 dimensional points
type Point = (Double, Double)

midPoint :: Point -> Point -> Point
midPoint (x1, y1) (x2, y2) = ((x1 + x2) / 2, (y1 + y2) / 2)