-- Funções de alta ordem: Recebem outras funções como argumentos ou as produzem como resultado.
applyTwice :: (t -> t) -> t -> t
applyTwice f x = f (f x)

applyNtimes :: Int -> (t -> t) -> t -> t
applyNtimes 0 f x = x
applyNtimes n f x = f (applyNtimes (n-1) f x)

maxFun :: (Int -> Int) -> Int -> Int
maxFun f 0 = f 0
maxFun f n = (maxFun f (n-1)) `max` (f n)


-- Exemplo: análise de vendas
total :: (Int->Int)-> Int -> Int
total f 0 = f 0
total f n = total f (n-1) + f n
