calcPi1 :: Int -> Double
calcPi1 n = sum (take n 
    [4 / fromIntegral x | x <- zipWith (*) [1, 3..] (cycle [1,-1])])

calcPi2 :: Int -> Double
calcPi2 n = 3 + sum (take (n - 1) 
    [4 / fromIntegral x | x <- zipWith (*) [product [x..(x+2)] | x <- [2,4..]] (cycle [1,-1])])