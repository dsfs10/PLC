-- tipo equivalente a lista
data List t = Nil -- lista vazia
            | Cons t (List t) -- lista com cabeca e cauda
  deriving (Show)

-- tipo arvore com um valor (do tipo t) no nó
data Tree t = NilT -- folha da árvore (sem valor)
            | Node t (Tree t) (Tree t) -- nó da árvore com valor do tipo t
  deriving (Show)


--toList :: List t -> [t]


--fromList :: [t] -> List t


depth :: Tree t -> Int -- obs: o nome do tipo só aparece aqui, na definição da função
depth NilT = 0
depth (Node valor sub_a_1 sub_a_2) = 1 + (max (depth sub_a_1) (depth sub_a_2)) 


collapse :: Tree t -> [t]
collapse NilT = []
collapse (Node valor sub_1 sub_2) = valor : collapse sub_1 ++ collapse sub_2 -- Tem q ser '++' entre os collapses pq os dois vão retornar listas; valor eh um elemento, por isso usa ':', pq ele eh a cabeça


mapTree :: (t -> u) -> Tree t -> Tree u
mapTree f NilT = NilT
mapTree f (Node valor s_1 s_2) = Node (f valor) (mapTree f s_1) (mapTree f s_2)


{- Exemplos:
 toList (Cons 4 (Cons 5 (Cons 6 Nil))) -----> (4:5:6:[]) 
 fromList [4,5,6] ----> (Cons 4 (Cons 5 (Cons 6 Nil)))

 depth (Node 'x' (Node 'y' NIlT NilT) (NilT)) ----> 2
 collapse (Node 'x' (Node 'y' NIlT NilT) (NilT)) ----> ['x','y']
 mapTree not (Node True (Node False NIlT NilT) (NilT)) ----> 
   (Node False (Node True NIlT NilT) (NilT))

-}