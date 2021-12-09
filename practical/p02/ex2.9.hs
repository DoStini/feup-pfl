cipher :: Int -> Char -> Char
cipher k x
    | fromEnum x > fromEnum 'Z' || fromEnum x < fromEnum 'A' = x
    | otherwise = cycle ['A'..'Z'] !! (fromEnum x - fromEnum 'A' + k)

caesarCipher :: Int -> String -> String
caesarCipher _ [] = ""
caesarCipher k (x:xs) = cipher k x : caesarCipher k xs