import Data.List (group)

triangles :: [Integer]
triangles = scanl1 (+) [1..]

factors :: Integer -> [Integer]
factors n = go n 2 []
            where
              go n p ps | p * p > n      = reverse $ n : ps
                        | n `rem` p == 0 = go (n `div` p) p (p : ps)
                        | otherwise      = go n (p + 1) ps

divisors :: Integer -> Integer
divisors n = product . map (succ . fromIntegral . length) . group $ factors n

main :: IO ()
main = print . head . filter ((> 500) . divisors) $ triangles
