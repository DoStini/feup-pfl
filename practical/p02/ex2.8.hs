factorial :: Integer -> Integer
factorial n = product [1 .. n]

binom :: Integer -> Integer -> Integer
binom n k = div (factorial n) (factorial k * factorial (n - k))

pascal :: Integer -> [[Integer]]
pascal n = [[binom x y | y <- [0 .. x]] | x <- [0 .. n]]