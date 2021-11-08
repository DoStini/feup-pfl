divprop :: Integer -> [Integer]
divprop n = [x | x <- [1 .. (n - 1)], mod n x == 0]

perfect :: Integer -> [Integer]
perfect n = [x | x <- [1 .. (n - 1)], sum (divprop x) == x]