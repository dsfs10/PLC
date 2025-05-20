isReplica :: String -> Int -> Char -> Bool
isReplica "" 0 _ = True
isReplica "" _ _ = False
isReplica (a:as) b c | a /= c = False
                     | otherwise = isReplica as (b-1) c

main = do
    a <- getLine
    b <- getLine
    c <- getChar
    let result = isReplica a (read b) c
    print result
