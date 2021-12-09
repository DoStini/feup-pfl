maximum' :: Ord a => [a] -> a
maximum' = foldl1 (\a b -> if a > b then a else b)

minimum' :: Ord a => [a] -> a
minimum' = foldl1 (\a b -> if a < b then a else b)

foldl1' :: (a -> a -> a) -> [a] -> a
foldl1' f a = foldl f (head a) (tail a)

foldr1' :: (a -> a -> a) -> [a] -> a
foldr1' f a = foldr f (last a) (init a)