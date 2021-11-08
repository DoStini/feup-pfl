nub' :: Eq a => [a] -> [a]
nub' [] = []
nub' (a : arr) = a : nub' [x | x <- arr, x /= a]