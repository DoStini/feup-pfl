insert' :: Ord a => a -> [a] -> [a]
insert' v [] = [v]
insert' v (a : arr)
  | v < a = v : a : arr
  | otherwise = a : insert' v arr

isort :: Ord a => [a] -> [a]
isort = foldr insert' []