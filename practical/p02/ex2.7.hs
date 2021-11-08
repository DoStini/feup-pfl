divprop :: Integer -> [Integer]
divprop n = [x | x <- [1 .. (n - 1)], mod n x == 0]

primo :: Integer -> Bool
primo n = length (divprop n) == 1