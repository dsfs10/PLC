-- 1) Defina a função addEspacos que produz um string com uma quantidade n de espaços.
addEspacos :: Int -> String
addEspacos 0 = ""
addEspacos x = " " ++ addEspacos(x-1)

-- Defina a função paraDireita utilizando a definição de addEspacos para adiciconar uma
-- quantidade n de espaços à esquerda de um dado String, movendo o mesmo para a direita.
paraDireita :: Int -> String -> String
paraDireita x str = addEspacos x ++ str

-- Escreva uma função para retornar, em forma de tabela, todas as vendas da semana 0 até a semana n, incluindo
-- o total e a média de vendas no período. Usem as funções definidas previamente e defina novas funções
-- que achar necessário.
vendas :: Int -> Int
vendas 1 = 500
vendas 2 = 900
vendas 3 = 1500
vendas 4 = 400
vendas 5 = 100
vendas _ = 0

totalVendas :: Int -> Int
totalVendas n | n == 0 = vendas 0
              | otherwise = totalVendas(n-1) + vendas n

imprimeSemanas :: Int -> String
imprimeSemanas 0 = "0" ++ paraDireita 4 (show(vendas 0))
imprimeSemanas n = imprimeSem 0
    where imprimeSem :: Int -> String
          imprimeSem i | i <= n = show(i) ++ paraDireita 4 (show(vendas i)) ++ "\n" ++ imprimeSem(i+1) 
                       | otherwise = ""


imprimeTotal :: Int -> String
imprimeTotal n = "Total" ++ paraDireita 4 (show(totalVendas n))

--imrpimeMedia :: Int -> String
--imprimeMedia n = "Media" ++ paraDireita 5 (show(mediaVendas n)) ++ "\n"

imprimeTabela :: Int -> IO()
imprimeTabela n = putStr("Semana " ++ "Venda" ++ "\n"
                  ++ imprimeSemanas n 
                  ++ imprimeTotal n)
                 -- ++ imprimeMedia n)


        
