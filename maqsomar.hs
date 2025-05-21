maquinaSomar :: [Int] -> [Int]
maquinaSomar [0,0] = []
--maquinaSomar (0:0:as) = []
maquinaSomar (a:(b:as)) | a /= 0 && b == 0 = [a]              
                        | a == 0 && b /= 0 = maquinaSomar (b:as)
                        | a == 0 && b == 0 = maquinaSomar (a:(b:[]))
                        | otherwise = (a+b+head(maquinaSomar(as)):[])

main = do
       lista <- getLine
       print $ maquinaSomar (read lista :: [Int])

------------------------------------------------------------
v 2.0
maquinaSomar :: [Int] -> [Int]
maquinaSomar (a:(b:as)) | a /= 0 && b == 0 = [a]              
                        | a == 0 && b == 0 = []
                        | b /= 0 = maquinaSomar (a+b:as)

main = do
       lista <- getLine
       print $ maquinaSomar (read lista :: [Int])
-------------------------------------------------------------
v 2.1
maquinaSomar :: [Int] -> [Int]
maquinaSomar [] = []
maquinaSomar [0] = []
maquinaSomar (a:(b:as)) | b == 0 && a == 0 = []
                        | b == 0 && head(as) == 0 = [a]
                        | b == 0 && head(as) /= 0 = maquinaSomar (as)
                        | b /= 0 && head(as) == 0 = maquinaSomar (b:maquinaSomar(as))
                        | a /= 0 = maquinaSomar (b:as)
                        | otherwise = maquinaSomar (b+head(as):as)

main = do
       lista <- getLine
       print $ maquinaSomar (read lista :: [Int])
-------------------------------------------------------------
v 2.2 
maquinaSomar :: [Int] -> [Int]
maquinaSomar [] = []
maquinaSomar [0] = []
maquinaSomar (a:as) | a == 0 && head(as) == 0 = [a]
                    | a == 0 = maquinaSomar(a+head(as):as)
                    | otherwise = maquinaSomar (as)

main = do
       lista <- getLine
       print $ maquinaSomar (read lista :: [Int])
