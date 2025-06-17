data Tree = No Int Tree Tree | Folha Int deriving Show

collapseT :: Tree t -> [Int]
collapseT (Folha valor) = [valor]
collapseT (No valor t1 t2) = collapseT t1 ++ [valor] ++ collapseT t2

ordenada :: Tree -> Bool
ordenada arvore = ordList (collapseT arvore)  

ordList :: [Int] -> Bool
ordList [] = True
ordList [a] = True
ordList (a:(b:abs)) | b >= a = ordList (b:abs)
                  | otherwise = False

-------------------------------------------------
-- Fazendo:

-- Questão 1
insert :: Int -> [Int] -> [Int]
insert n (a:as) | n > a = a : insert n as
                | otherwise = n : (a:as)

-- Questão 2
ehPrimo :: Int -> Bool
ehPrimo 2 = True
ehPrimo n = testaDivisores n (n-1)
    where testaDivisores :: Int -> Int -> Bool
          testaDivisores n 1 = True
          testaDivisores n x | mod n x == 0 = False
                             | otherwise = testaDivisores n (x-1)

-- Questão 3
sqr :: Int -> Int
sqr n = n * n

sumPrimeSquares1 :: Int -> Int -> Int
sumPrimeSquares1 x y = foldr (+) 0 (map sqr (filter ehPrimo [x..y]))

-- Questão 4
sumPrimeSquares1' :: Int -> Int -> Int
sumPrimeSquares1' x y = foldr (+) 0 (map (\a -> a * a) (filter ehPrimo [x..y]))

-- Questão 5
sumPrimeSquares2 :: Int -> Int -> Int
sumPrimeSquares2 x y 

-- Questão 6
data Tree = No Int Tree Tree | Folha Int deriving Show

collapseT :: Tree t -> [Int]
collapseT (Folha valor) = [valor]
collapseT (No valor t1 t2) = collapseT t1 ++ [valor] ++ collapseT t2

ordenada :: Tree -> Bool
ordenada No x t t | 
