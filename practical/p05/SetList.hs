data ListSet a = Set [a]
    deriving (Show)

empty :: ListSet a -> Bool
empty (Set []) = True
empty (Set _) = False

member :: Eq a => ListSet a -> a -> Bool
member (Set arr) x = elem x arr

insert :: Eq a => a -> ListSet a -> ListSet a
insert v (Set arr)
    | elem v arr = Set arr
    | otherwise  = Set (v : arr)

