zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (a1 : arr1) (a2 : arr2) = f a1 a2 : zipWith' f arr1 arr2