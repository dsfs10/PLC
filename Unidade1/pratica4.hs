isCrescent :: (Int -> Int) -> Int -> Bool
isCrescent f 0 = True
isCrescent f x | (f x) < (f (x-1)) = False
               | otherwise = isCrescent f (x-1)
-- Ou
isCrescent :: (Int -> Int) -> Int -> Bool
isCrescent f 0 = True
isCrescent f n | f n >= f (n-1) = isCrescent f (n-1)
               | otherwise = False

-- Ou: isCrescent f n = (f n >= f (n-1)) && isCrescent f (n-1)


sucessor :: Int -> Int
sucessor x = x + 1

antecessor :: Int-> Int
antecessor x = x - 1

umMenosx :: Int -> Int
umMenosx x = 1 - x
