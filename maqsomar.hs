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
V 2.0
maquinaSomar :: [Int] -> [Int]
maquinaSomar (a:(b:as)) | a /= 0 && b == 0 = [a]              
                        | a == 0 && b == 0 = []
                        | b /= 0 = maquinaSomar (a+b:as)

main = do
       lista <- getLine
       print $ maquinaSomar (read lista :: [Int])
