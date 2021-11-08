between :: Ord a => a -> a -> a -> Bool
between a b c = (a > b && a < c) || (a > c && a < b)

mediana :: Ord a => a -> a -> a -> a
mediana a b c
  | between a b c = a
  | between b a c = b
  | otherwise = c

mediana' :: (Ord a, Num a) => a -> a -> a -> a
mediana' a b c = sum vals - maximum vals - minimum vals
  where
    vals = [a, b, c]