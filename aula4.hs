-- Polimorfismo: Uma função polimórfica é uma função que vai servir para qualquer tipo de dado

length :: [t] -> Int
length [] = 0
length (a:as) = 1 + length as

(++) :: [t] -> [t] -> [t]
[] ++ y = y
(x:xs) ++ y = x : (xs ++ y)

zip :: [t] -> [u] -> [(t,u)]
zip (a:as) (b:bs) = (a,b):zip as bs
zip _ _ = []


-- Compreensões de Listas: Usadas para definir listas em função de outras listas
doubleList xs = [2*a|a <- xs]

-- doubleIfEven xs = [2*a|a <- xs, isEven a]

sumPairs :: [(Int,Int)] -> [Int]
sumPairs lp = [a+b|(a,b) <- lp]

digits :: String -> String
digits st = [ch | ch <- st, isDigit ch]

-- Quicksort
qSort :: [Int] -> [Int]
qSort [] = []
qSort (x:xs) = qSort [y | y <- xs, y < x] ++ [x] ++ qSort [y | y <- xs, y >= x]
