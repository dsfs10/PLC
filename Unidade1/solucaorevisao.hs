-- Prova 2022.2
import data.Char

--Questão 1
rlencode0 :: [Int] -> [Int]
rlencode0 [] = []
rlencode0 (0:nums) | temZero nums = 0 : (1+contaZeros nums) : rlencode0 (tiraZeros nums)
                   | otherwise = 0:1:rlencode0 nums
rlencode0 (n:nums) = n:rlencode0 nums

contaZeros :: [Int] -> Int
contaZeros [] = 0
contaZeros (0:resto) = 1 + contaZeros resto
contaZeros (n:resto) = 0

tiraZeros :: [Int] -> [Int]
tiraZeros [] = []
tiraZeros (0:xs) = tiraZeros xs
tiraZeros (x:xs) = (x:xs)

temZero :: [Int] -> Bool
temZero [] = False
temZero (a:as) = (a == 0)

rldecode0 :: [Int] -> [Int]
rldecode0 [] = []
rldecode0 (0:n:nums) = repeteZ n ++ rldecode0 nums
rldecode0 (n:nums) = n:rldecode0 nums

repeteZ :: Int -> [Int]
repeteZ 0 = []
repeteZ n = 0 : repeteZ (n-1)

-- Questão 2
rldecodeLetras :: Strings -> Strings
rldecodeLetras [] = []
rldecodeLetras [ch] = [ch]
rldecodeLetras (ch1:ch2:ch3) | isDigit ch2 = repete ch1 (fromEnum ch2) ++ rldecodeLetras chs
                             | otherwise = ch1 : rldecodeLetras (ch2:chs)

repete :: Char -> Int -> String
repete ch 0 = []
repete ch n = ch : repete ch (n-1)

rlencodeLetras [] = []
rlencodeLetras [ch] = [ch]
rlencodeLetras (ch1:ch2:ch3) | ch1 == ch2 = ch1 : contaRep ch1 (ch2:chs) ++ rlencodeLetras (remove ch1 (ch2:chs))
                             | otherwise = ch1 : rlencodeLetras (ch2:chs)

contaRep ch1 [] = 0
contaRep ch1 (ch2:chs) | ch1 == ch2 = 1 + contaRep ch1 chs
                       | otherwise = 0

remove :: Char -> String -> String
remove ch1 [] = []
remove ch1 (ch2:chs) | ch1 == ch2 = remove ch1 chs
                     | otherwise = ch2:chs

remove' :: Char -> String -> String
remove' ch1 lista = dropWhile (\ch -> ch == ch1) lista

-- Questão 3
rldecodeLetrasCodigo :: [Letra] -> String
rldecodeLetrasCodigo [] = []
rldecodeLetrasCodigo (codigo:codigos) = decodeCodigo codigo ++ rldecodeLetrasCodigo codigos

decodeCodigo :: Letra -> String
decodeCodigo (Unica ch) = [ch]
decodeCodigo (Repetida ch n) = repete ch n

rlencodeLetrasCodigo :: String -> [Letra]
rlencodeLetrasCodigo [] = []
rlencodeLetrasCodigo [ch] = [Unica ch]
rlencodeLetrasCodigo (ch1:ch2:chs) | ch1 == ch2 = Repetida ch1 (contaRep ch1 (ch2:chs)+1) : rlencodeLetrasCodigo (remvoe ch1 (ch2:chs)) -- incompleto
