intercalar :: a -> [a] -> [[a]]
intercalar v [] = [[v]]
intercalar v arr = (v : arr) : ([head arr : x | x <- intercalar v (tail arr)])

perms :: [a] -> [[a]]
perms [] = [[]]
perms x = concat [intercalar head x ((take idx (tail x) ++ drop (idx+1) (tail x)) !! idx) | idx <- [0..]]