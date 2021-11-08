addPoly :: [Int] -> [Int] -> [Int]
addPoly a b = reverse (take n (zipWith (+) (reverse a ++ repeat 0) (reverse b ++ repeat 0)))
  where
    n = maximum [length a, length b]

-- -- multPoly :: [Int] -> [Int] -> [Int]
-- -- multPoly a b = zip
-- [1, 3, -1]
-- [3, 0, 2]

-- [[(1, 3)], [(1, 0), (3, 3)], [(1, 2), (3, 0), (-1, 3)], [(3, 2), (-1, 0)], [(-1, 2)]]

res a1 a2 = map (\(a, n) -> a ++ (take n (repeat 0))) (zip res (reverse [0 .. (length res - 1)]))
  where
    res = [[x * y | y <- a2] | x <- a1]

final a1 a2 = foldr addPoly [] (res a1 a2)