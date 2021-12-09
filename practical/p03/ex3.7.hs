(++/) :: [a] -> [a] -> [a]
(++/) a b = foldr (:) b a

concat' :: [[a]] -> [a]
concat' = foldr (++) []

reverse' :: [a] -> [a]
reverse' = foldr (\v arr -> arr ++ [v]) []

reverse'' :: [a] -> [a]
reverse'' = foldl (\arr v -> v : arr) []

elem' :: Eq a => a -> [a] -> Bool
elem' x = any (== x)