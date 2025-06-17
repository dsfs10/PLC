import Control.Monad.RWS (MonadState(put))
-- Questão 1
jump :: Int -> [t] -> [t]
jump 1 l = l 
jump n (a:as) = jump (n-1) as

contaZeros :: [Int] -> Int -> Int
contaZeros [] n = n
contaZeros (b:bs) n | b /= 0 = n
                    | b == 0 = contaZeros bs (n+1)

rlencode0 :: [Int] -> [Int]
rlencode0 [] = []
rlencode0 (a:as) | a == 0 = a : contaZeros as 1 : rlencode0 (jump (contaZeros as 1) as)
                 | otherwise = a : rlencode0 as

putZeros :: Int -> [Int]
putZeros 0 = []
putZeros n = 0 : putZeros (n-1)

rldecode0 :: [Int] -> [Int]
rldecode0 [] = []
rldecode0 (a:as) | a == 0 = putZeros (head as) ++ rldecode0 (tail as)
                 | otherwise = a : rldecode0 as

-- Questão 2
count :: String -> Int -> Int
count (a:as) n | a == head as = count as (n+1)
               | otherwise = n+1

rlencodeLetras :: String -> String
rlencodeLetras [] = []
rlencodeLetras (a:as) | a == head as = a : show (count as 1) ++ rlencodeLetras(jump (count as 1) as)
                      | otherwise = a : rlencodeLetras as
