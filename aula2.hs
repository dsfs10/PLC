vendas :: Int -> Int
vendas 0 = 200
vendas 1 = 500
vendas 2 = 900
vendas 3 = 1500
vendas 4 = 400
vendas 5 = 100
-- vendas outra_semana = 0 -- qualquer valor que não esteja entre 0 e 5

totalVendas :: Int -> Int
totalVendas n | n == 0 = vendas 0
              | otherwise = totalVendas(n-1) + vendas n

maxVendas :: Int -> Int
maxVendas n | n == 0 = vendas 0
            | otherwise = max (maxVendas(n-1))(vendas n)


-- Definições locais
{-sumSquares :: Int -> Int -> Int
sumSquares x y = sqX + sqY
    where sqX = x * x
          sqY = y * y-}

sumSquares :: Int -> Int -> Int
sumSquares x y = sqX + sqY
    where sqZ = z * z

