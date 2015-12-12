import Control.Monad (guard)

main :: IO ()
main = print . head $ do
         a <- [1..1000]
         b <- [a..1000]
         let c = 1000 - a - b
         guard $ c > 0 && a * a + b * b == c * c
         return $ a * b * c
