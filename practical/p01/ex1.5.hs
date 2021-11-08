factorial :: Integer -> Integer
factorial n = product [1 .. n]

binom :: Integer -> Integer -> Integer
binom n k = div (factorial n) (factorial k * factorial (n - k))