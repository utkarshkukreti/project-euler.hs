factorial :: Integer -> Integer
factorial n = product [1..n]

main :: IO ()
main = print $ factorial 40 `div` factorial 20 ^ 2
