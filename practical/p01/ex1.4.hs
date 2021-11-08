last' :: [a] -> a
last' a = head (reverse a)

last'' :: [a] -> a
last'' a = head (drop ((length a) - 1) a)

last' :: [a] -> [a]
last' a = take (length a - 1) a

last'' :: [a] -> [a]
last'' a = reverse (tail (reverse array))