curta :: [a] -> Bool
curta a = length a < 2

curta' :: [a] -> Bool
curta' [] = True
curta' [_] = True
curta' [_, _] = True
curta' _ = False
