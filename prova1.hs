-- Questão 1
type Chave = [(Char,Char)]

letras :: [Char]
letras = ['A'..'Z']

pula :: Int -> [Char] -> Char
pula 0 (a:as) = a
pula n [] = pula n letras
pula n (a:as) = pula (n-1) as

aux :: Int -> [Char] -> Chave
aux 0 (a:[]) = [(a, a)]
aux 0 (a:as) = (a, a) : aux 0 as
aux n (a:[]) = [(a, pula (n-1) [])]
aux n (a:as) = (a, pula (n-1) as) : aux n as  
 
cria_chave :: Int -> Chave
cria_chave n = aux n letras  

-- Questão 2
muda :: Char -> Chave -> Char
muda a [] = a
muda a c | a == fst(head c) = snd(head c)
         | otherwise = muda a (drop 1 c)

crypt :: Chave -> String -> String
crypt c [] = []
crypt c (' ':as) = ' ' : crypt c as
crypt c (a:as) = muda a c : crypt c as

-- Questão 3
data ChaveTree = Node Char Char ChaveTree ChaveTree | Leaf
    deriving (Show)

chave_parcial :: ChaveTree
chave_parcial = Node 'I' 'L' (Node 'A' 'D' Leaf
                                            (Node 'E' 'X' Leaf Leaf))
                             (Node 'L' 'O' Leaf Leaf)

collapseT :: ChaveTree -> Chave
collapseT Leaf = []
collapseT (Node ch1 ch2 sub1 sub2) = collapseT sub1 ++ [(ch1, ch2)] ++ collapseT sub2 

cryptT :: ChaveTree -> String -> String
cryptT ct [] = []
cryptT ct (' ':as) = ' ' : cryptT ct as
cryptT ct (a:as) = muda a (collapseT ct) : cryptT ct as

-- Questão 4
conta_folhas :: ChaveTree -> Int
conta_folhas Leaf = 1
conta_folhas (Node ch1 ch2 sub1 sub2) = conta_folhas sub1 + conta_folhas sub2
