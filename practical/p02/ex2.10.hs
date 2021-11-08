and' :: [Bool] -> Bool
and' [] = True
and' (c : arr) = c && and' arr

or' :: [Bool] -> Bool
or' [] = False
or' (c : arr) = c || or' arr

concat' :: [[a]] -> [a]
concat' [] = []
concat' (c : arr) = c ++ concat' arr

replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' n v = v : replicate' (n - 1) v

(/!!) :: [a] -> Int -> a
(/!!) arr 0 = head arr
(/!!) (_ : arr) n = arr /!! (n - 1)

elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' v (c : arr) = v == c || elem' v arr