comp f p xs = map f (filter p xs)

comp' f p xs = [f x | x <- xs, p x]