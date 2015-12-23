import Data.Char (digitToInt)

main :: IO ()
main = print . sum . map digitToInt . show $ product [1..100]
