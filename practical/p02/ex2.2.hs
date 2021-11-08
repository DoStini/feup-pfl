aprox :: Int -> Double
aprox n = sum [(-1) ^ fromIntegral x / (2 * fromIntegral x + 1) | x <- [0 .. n]] * 4

aprox' :: Int -> Double
aprox' n = sqrt (sum [(-1) ^ x / (fromIntegral x + 1) ^ 2 | x <- [0 .. n]] * 12)
