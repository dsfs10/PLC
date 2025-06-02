-- A função de composição: (f . g) x = f (g x)
sucessor :: Int -> Int
-- sucessor x = x + 1
sucessor = \x -> x + 1

twice :: (t -> t) -> (t -> t)
twice f = f . f

iter :: Int -> (t -> t) -> (t -> t)
iter 0 f = id
iter n f = (iter (n-1) f) . f

addOne x = x + 1
--map addOne [1,2,3]

--Notação Lambda: 
-- \x -> x + 1
-- map(\x -> x + 1) [1,2,3]

soma = \x -> \y -> x + y

multiply :: Int -> Int -> Int
multiply a b = a*b

doubleList :: [Int] -> [Int]
doubleList = map (multiply 2)

--addNum :: Int -> (Int -> Int)
--addNum n = h
--    where h m = n + m

-- \m -> 3+m
addNum n = (\m -> n+m)
