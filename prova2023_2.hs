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
data Elemento = Valor Int | Soma | Multiplica 
    deriving (Show)

exemploPilhaElem :: Pilha Elemento
exemploPilhaElem = [Valor 10, Valor 20, Soma, Valor 30, Multiplica]

verifica :: Elemento -> String
verifica (Valor n) = show n
verifica Soma = "+"
verifica Multiplica = "*"

gera_string :: Pilha Elemento -> String
gera_string [] = []
gera_string (a:(b:abs)) | verifica a == "+"
                        | verifica a == "*"
                        | otherwise = a : gera_string (b:abs)

-- exemplo de uso: gera_string exemploPilhaElem ——> "((10+20)*30)"
