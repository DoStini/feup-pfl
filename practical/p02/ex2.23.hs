addPoly :: [Int] -> [Int] -> [Int]
addPoly a b = reverse (take n (zipWith (+) (reverse a ++ repeat 0) (reverse b ++ repeat 0)))
  where
    n = maximum [length a, length b]

-- multPoly :: [Int] -> [Int] -> [Int]
-- multPoly a b = zip
