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
