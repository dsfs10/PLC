import Control.Monad.RWS (MonadState(put))
import Data.Char

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
rlencodeLetras (a:as) | as == [] = a:[]
                      | a == head as = a : show (count as 1) ++ rlencodeLetras(jump (count as 1) as)
                      | otherwise = a : rlencodeLetras as

putLetra :: Char -> Int -> String
putLetra _ 0 = []
putLetra a n = a : putLetra a (n-1)

rldecodeLetras :: String -> String
rldecodeLetras [] = []
rldecodeLetras (a:as) | as == [] = a:[]
                      | isDigit (head as) = putLetra a (read [head as] :: Int) ++ rldecodeLetras  (tail as)
                      | otherwise = a : rldecodeLetras as

-- Questão 3
data Letra = Unica Char
            | Repetida Char Int
    deriving Show

rlencodeLetrasCodigo :: String -> [Letra]
rlencodeLetrasCodigo [] = []
rlencodeLetrasCodigo (a:as) | as == [] = Unica a : []
                            | a == head as = Repetida a (count as 1) : rlencodeLetrasCodigo(jump (count as 1) as)
                            | otherwise = Unica a : rlencodeLetrasCodigo as

repete :: Char -> Int -> String
repete ch 0 = []
repete ch n = ch : repete ch (n-1)

decodeCodigo :: Letra -> String
decodeCodigo (Unica ch) = [ch]
decodeCodigo (Repetida ch n) = repete ch n

rldecodeLetrasCodigo :: [Letra] -> String
rldecodeLetrasCodigo [] = []
rldecodeLetrasCodigo (codigo:codigos) = decodeCodigo codigo ++ rldecodeLetrasCodigo codigos

-- [Unica 'a', Unica 'b', Repetida 'a' 3, Unica 'c', Unica 'd', Repetida 'a' 4, Repetida 'b' 3, Repetida 'c' 2, Unica 'x', Unica 'y', Unica 'z']
