-- Questão 1
fibonacci :: [Int]
fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)

fibonacci' :: [Int]
fibonacci' = aux 0 1
    where aux :: Int -> Int -> [Int]
          aux x y = x : aux y (x+y)

-- Questão 2
merge :: Ord t => [t] -> [t] -> [t]
merge [] bs = bs
merge as [] = as 
merge (a:as) (b:bs) | a >= b = b : merge (a:as) bs
                    | otherwise = a : merge as (b:bs)

-- Questão 3
type Pilha t = [t]
data Elemento = Valor Int | Soma | Multiplica deriving (Show)

exemploPilhaElem :: Pilha Elemento
exemploPilhaElem = [Valor 10, Valor 20, Soma, Valor 30, Multiplica]

aux :: Pilha Elemento -> String
aux ((Valor x):as) = show x
aux ((Soma):a:b:bs) = "(" ++ aux (b:bs) ++ "+" ++ aux (a:b:bs) ++ ")"
aux ((Multiplica):a:b:bs) = "(" ++ aux (b:bs) ++ "*" ++ aux (a:b:bs) ++ ")"


gera_string :: Pilha Elemento -> String
gera_string [] = []
gera_string stack = aux (reverse stack)

-- exemplo de uso: gera_string exemploPilhaElem ——> "((10+20)*30)"

-- Questão 4
aux2 :: Pilha Elemento -> Int
aux2 ((Valor x):as) = x
aux2 ((Soma):a:b:bs) = aux2 (a:b:bs) + aux2 (b:bs)
aux2 ((Multiplica):a:b:bs) = aux2 (a:b:bs) * aux2 (b:bs)

calcula :: Pilha Elemento -> Int
calcula [] = 0
calcula stack = aux2 (reverse stack)
