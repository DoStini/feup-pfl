primos :: [Int]
primos = crivo [2..]

crivo :: [Int] -> [Int]
crivo (p:xs) = p : crivo [x | x <- xs, x `mod` p /= 0]

fatores 1 = []
fatores n = p : fatores (n `div` p)
    where
        p = head (dropWhile (\x -> n `mod` x /= 0) primos)
