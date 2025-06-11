rlencode0 :: [Int] -> [Int]
rlencode0 [] = []
rlencode0 (a:as) | a == 0 = [a] ++ [aux as 1] ++ rlencode0(jump as (aux as 1))
                 | otherwise = [a] ++ rlencode0 as
                 where aux :: [Int] -> Int -> Int
                       aux [] n = n
                       aux (x:xs) n | x /= 0 = n
                                    | x == 0 = aux xs n+1
                       jump :: [Int] -> Int -> [Int]
                       jump [] n = []
                       jump l 1 = l
                       jump (c:cs) n = jump cs (n-1) 

rldecode0 :: [Int] -> [Int]
rldecode0 [] = []
rldecode0 (a:as) | a == 0 = [a] ++ aux2 (head as) ++ rldecode0 (tail as)
                 | otherwise = [a] ++ rldecode0 as
                 where aux2 :: Int -> [Int]
                       aux2 1 = []
                       aux2 n = [0] ++ aux2 (n-1) 
