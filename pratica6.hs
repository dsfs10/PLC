-- Questão 3 prova 2024.2
-- Usando as funçoes map, filter e alguma das funções fold, faça a função sumPrimeSquares
ehPrimo :: Int -> Bool
ehPrimo 1 = False
ehPrimo n = naoTemDivisor n (n-1)
    where 
        naoTemDivisor :: Int -> Int -> Bool
        naoTemDivisor n 1 = True
        naoTemDivisor n x | n `mod` x == 0 = False
                          | otherwise = naoTemDivisor n (x-1)

square :: Int -> Int
square x = x * x

sumPrimeSquares1 :: Int -> Int -> Int -- sumPrimeSquares1 30 50 -> 8069
sumPrimeSquares1 x y = foldr1 (+) (map square (filter ehPrimo [x..y])) 
