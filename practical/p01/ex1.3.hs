metades :: [a] -> ([a], [a])
metades x = let l = ceiling (fromIntegral (length x) / 2) in (take l x, drop l x)