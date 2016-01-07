import Data.Char (ord)
import Data.List (sort)

worth :: String -> Int
worth = sum . map (subtract 64 . ord)

main :: IO ()
main = do
  contents <- readFile "p022_names.txt"
  let names = sort . read $ "[" ++ contents ++ "]"
  print . sum . zipWith (*) [1..] $ map worth names
