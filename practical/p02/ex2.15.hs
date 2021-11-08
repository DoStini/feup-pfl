inter :: a -> [a] -> [a]
inter _ [v] = [v]
inter sep (a : arr) = [a, sep] ++ inter sep arr