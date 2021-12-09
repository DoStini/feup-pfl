import Stack
import Data.IntMap (member)

opp :: Char -> Char -> Bool
opp '(' ')' = True
opp '[' ']' = True
opp '{' '}' = True
opp _ _ = False

parent' :: Stack Char -> String -> Bool
parent' stack "" = isEmpty stack 
parent' stack (c:str)
    | isEmpty stack = parent' (push c stack) str
    | opp (top stack) c = parent' (pop stack) str
    | otherwise = parent' (push c stack) str

parent :: String -> Bool
parent = parent' empty


calc :: Stack Float -> String -> Stack Float
calc stack "" = stack
calc stack "+" = push (top (pop stack) + top stack ) (pop (pop stack))
calc stack "-" = push (top (pop stack) - top stack ) (pop (pop stack))
calc stack "*" = push (top (pop stack) * top stack ) (pop (pop stack))
calc stack "/" = push (top (pop stack) / top stack ) (pop (pop stack))
calc stack num = push (read num) stack

calcular :: String -> Float
calcular string = top $ foldl calc empty (words string)

-- main :: IO()
-- main = do 
--     str <- getLine
--     putStrLn (show (calcular str))


