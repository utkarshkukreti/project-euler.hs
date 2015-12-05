fibs :: [Integer]
fibs = 1 : 2 : zipWith (+) fibs (tail fibs)

main :: IO ()
main = print . sum . filter even . takeWhile (< 4000000) $ fibs
