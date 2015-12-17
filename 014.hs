import Data.List (maximumBy)
import Data.Ord (comparing)

collatzLength :: Integer -> Integer
collatzLength n = go n 1
                  where
                    go 1 l = l
                    go n l | even n    = go (n `div` 2) (l + 1)
                           | otherwise = go (3 * n + 1) (l + 1)

main :: IO ()
main = print . fst . maximumBy (comparing snd) . zip [1..] $ map collatzLength [1..999999]
