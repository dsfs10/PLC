type Comando = String
type Valor = Int

executa :: [(Comando, Valor)] -> Int
executa l = topdown (reverse l)
    where topdown :: [(Comando, Valor)] -> Int
          topdown [] = 0
          topdown ((a,b):as) 
                   | a == "Soma" = b + topdown as
                   | a == "Subtrai" = topdown as - b
                   | a == "Multiplica" = b * topdown as
                   | a == "Divide" && b == 0 = -666
                   | a == "Divide" = topdown as `div` b

main = do
    a <- getLine
    let result = executa (read a)
    print result
