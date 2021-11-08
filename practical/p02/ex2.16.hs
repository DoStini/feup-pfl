algarisms :: Int -> [Int]
algarisms 0 = []
algarisms v = mod v 10 : algarisms (div v 10)