menorMaior :: Int -> Int -> Int -> (Int, Int)
menorMaior a b c = (min(min a b) (c), max(max a b) (c))

--ordenaTripla :: (Int, Int, Int) -> (Int, Int, Int)
--ordenaTripla (a, b, c) 

double :: [Int] -> [Int]
double[] = []
double (a:as) = (2*a:double(as))

member :: [Int] -> Int -> Bool
member [] b = False
member (a:as) b | a == b = True
                | otherwise = member as b

digits :: String -> String
digits [] = []
digits (a:as) | '0' <= a && a <= '9' = (a:digits as)
              | otherwise = (digits as)

sumPairs :: [(Int,Int)] -> [Int]
sumPairs[] = []
sumPairs (a:as) = ((fst a + snd a):sumPairs as)

Ou:
sumPairs :: [(Int,Int)] -> [Int]
sumPairs[] = []
sumPairs ((a,b):as) = ((a+b):sumPairs as)
