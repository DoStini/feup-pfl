intercalar :: a -> [a] -> [[a]]
intercalar v [] = [[v]]
intercalar v arr = (v : arr) : ([head arr : x | x <- intercalar v (tail arr)])