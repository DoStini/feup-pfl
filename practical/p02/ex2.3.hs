dotprod :: [Float] -> [Float] -> Float
dotprod a b = sum (map (\(x, y) -> x + y) (zip a b))