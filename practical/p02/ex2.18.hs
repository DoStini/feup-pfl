fromBits :: [Int] -> Int
fromBits [] = 0
fromBits (a : arr) = a * 2 ^ length arr + fromBits arr