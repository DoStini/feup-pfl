safetail :: [a] -> [a]
safetail [] = []
safetail x = tail x

safetail' :: [a] -> [a]
safetail' x
  | null x = []
  | otherwise = tail x

safetail'' :: [a] -> [a]
safetail'' x =
  if null x
    then []
    else tail x