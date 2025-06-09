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