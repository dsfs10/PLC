-- Tuplas
intP :: (Int, Int)
intP = (33,43)

(True,'x') :: (Bool, Char)
(34, 22,'b') :: (Int, Int, Char)

addPair :: (Int,Int) -> Int
addPair (x,y) = x+y

shift :: ((Int,Int),Int) -> (Int,(Int,Int))
shift ((x,y),z) = (x,(y,z))

-- Sinônimos de Tipos

type Name = String
type Age = Int
type Phone = Int
type Person = (Name, Age, Phone)

name :: Person -> Name
name (n,a,p) = n

-- Exemplo: equações de segundo grau

--ax2 + bx + c = 0.0
-- Duas raízes, se b2 > 4.0*a*c
-- Uma raiz, se b2 = 4.0*a*c
-- Não tem raízes, se b2 < 4.0*a*c
-- Calculando as raízes:
-- (-b ± sqrt(b2-4ac))/2a

-- Resolução bottom-up
roots :: Float -> Float -> Float -> String
roots a b c | b^2 == 4.0*a*c = show(oneRoot a b c)
            | b^2 > 4.0*a*c = show f ++ " " ++ show s
            | otherwise = "no roots"
              where (f,s) = twoRoots a b c
            {- ou
            f = fst(twoRoots a b c)
            s = snd(twoRoots a b c)-}

-----------------------------------------------------------------------
-- Listas
--[1,2,3,4] :: [Int]
--[(5,True),(7,True)] :: [(Int,Bool)]
--[[4,2],[3,7,7,1],[],[9]] :: [[Int]]
--['b','o','m'] :: [Char]
--"bom" :: [Char]

{-O construtor de listas (:)

• Outra forma de escrever listas:
[5] é o mesmo que 5:[]
[4,5] é o mesmo que 4:(5:[]) obs: faz primeiro o (5:[])
[2,3,4,5] é o mesmo que 2:3:4:5:[]

• (:) é um construtor polimórfico:
(:) :: Int -> [Int] -> [Int]
(:) :: Bool -> [Bool] -> [Bool]
(:) :: t -> [t] -> [t]

• [2..7] = [2,3,4,5,6,7]
• [-1..3] = [-1,0,1,2,3]
• ['a'..'d'] =
['a','b','c','d']
• [2.8..5.0] = [2.8,3.8,4.8]
• [7,5..0] = [7,5,3,1]
• [2.8,3.3..5.0]
= [2.8,3.3,3.8,4.3,4.8]-}

-- Funções sobre listas

sumList :: [Int] -> Int
sumList[] = 0
sumList (a:as) = a + sumList as
