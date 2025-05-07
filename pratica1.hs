maxThreeOccurs :: Int -> Int -> Int -> (Int, Int)
maxThreeOccurs m n p = (mx, eqCount)
    where mx = maxiThree m n p
          eqCount = equalCount mx m n p

maxiThree :: Int -> Int -> Int -> Int
maxiThree x y z = max(max(x)(y))(z)


equalCount :: Int -> Int -> Int -> Int -> Int
equalCount m x y z = conta x + conta y + conta z
    where conta n | n == m = 1
                  | otherwise = 0

-- 1) Defina uma função que, dado um número inteiro, determina se ele é primo ou não.
ehPrimo :: Int -> Bool
ehPrimo 1 = False
ehPrimo n = naoTemDivisor n (n-1)
    where 
        naoTemDivisor :: Int -> Int -> Bool
        naoTemDivisor n 1 = True
        naoTemDivisor n x | n `mod` x == 0 = False
                          | otherwise = naoTemDivisor n (x-1)

-- Outro jeito: naoTemDivisor n x = (not (n `mod` x == 0)) && naoTemDivisor n (x-1)

{- 2) Defina uma função que, dados dois números inteiros x e y, determina se 
esses números são primos entre si*:

> primosEntreSi 20 21
True
> primosEntreSi 400 30
False-}
