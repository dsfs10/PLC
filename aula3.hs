import Data.Char

-- ou exclusivo
eXor :: Bool -> Bool -> Bool
eXor x y = (x || y) && not (x && y)

-- outra forma de ou exclusivo
--eXor :: Bool -> Bool -> Bool
--eXor True x = not x
--eXor False x = x

-- Verifica se não houve vendas em
-- uma semana n
--vendasNulas :: Int -> Bool
--vendasNulas n = (vendas n == 0)

-- Ao invés de
--vendasNulas :: Int -> Bool
--vendasNulas n | vendas n == 0 = True
--              | otherwise = False


offset = ord 'A' - ord 'a'

maiuscula :: Char -> Char
maiuscula ch = chr (ord ch + offset)

ehDigito :: Char -> Bool
ehDigito ch = ('0' <= ch) && (ch <= '9')
