data Arv a = Vazia | No a (Arv a) (Arv a)
    deriving (Show)
-- arv = (No 11 (No 3 (No 2 Vazia Vazia) (No 5 Vazia Vazia)) (No 19 (No 13 Vazia Vazia) (No 23 Vazia Vazia)))


sumArv :: Num a => Arv a -> a
sumArv Vazia = 0
sumArv (No x left right) = x + sumArv left + sumArv right

listar :: Arv a -> [a]
listar Vazia = []
listar (No x left right) = listar right ++ [x] ++ listar left



nivel :: Int -> Arv a -> [a]
nivel _ Vazia = []
nivel 0 (No x _ _) = [x]
nivel n (No x left right) = nivel (n - 1) left ++ nivel (n - 1) right


mapArv :: (a -> b) -> Arv a -> Arv b
mapArv _ Vazia = Vazia
mapArv f (No x left right) = No (f x) (mapArv f left) (mapArv f right)


altura :: Arv a -> Integer
altura Vazia = 0
altura (No _ left right)
    | lh > rh = lh
    | otherwise = rh
    where
        lh = 1 + altura left
        rh = 1 + altura right

maisDir :: Arv a -> a
maisDir (No x _ Vazia) = x
maisDir (No _ _ right) = maisDir right


remover :: Ord a => a -> Arv a -> Arv a
remover _ Vazia = Vazia
remover x (No y Vazia right)
    | x == y = right
remover x (No y left Vazia)
    | x == y = left
remover t (No x left right)
    | t < x = remover t left
    | t > x = remover t right
    | x == t = No repl (remover repl left) right
        where repl = maisDir left

inserir :: Ord a => a -> Arv a -> Arv a
inserir x Vazia = No x Vazia Vazia
inserir x (No y esq dir)
    | x==y = No y esq dir -- já ocorre; não insere
    | x<y = No y (inserir x esq) dir -- insere à esquerda
    | x>y = No y esq (inserir x dir) -- insere à direita



construirSimple :: Ord a => [a] -> Arv a
construirSimple = foldr inserir Vazia




-- Construir uma árvore equilibrada
-- pré-condição: a lista de valores deve estar
-- por ordem crescente
construirEq :: [a] -> Arv a
construirEq [] = Vazia
construirEq xs = No x (construirEq xs') (construirEq xs'')
    where
        n = length xs `div` 2 -- ponto médio
        xs' = take n xs -- partir a lista
        x:xs'' = drop n xs


