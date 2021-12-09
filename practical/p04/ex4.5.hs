cipher :: Char -> Char -> Char
cipher k x
    | fromEnum x > fromEnum 'Z' || fromEnum x < fromEnum 'A' = x
    | otherwise = cycle ['A'..'Z'] !! (fromEnum x - fromEnum 'A' + (fromEnum k - fromEnum 'A'))

caesarCipher :: String -> String -> String
caesarCipher k = zipWith cipher  (cycle k)
