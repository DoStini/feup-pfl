mdc a b = if b == 0 then a else mdc b (a `mod` b)

mdc' :: Int -> Int -> Int
mdc' a b = fst (until (\(_, b) -> b == 0) (\(a, b) -> (b, mod a b)) (a, b))