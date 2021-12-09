dec2int :: [Int] -> Int
dec2int = foldl (\a b -> a * 10 + b) 0