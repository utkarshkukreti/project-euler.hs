factors :: Integer -> [Integer]
factors n = go n 2 []
            where
              go n p ps | p * p > n      = reverse $ n : ps
                        | n `rem` p == 0 = go (n `div` p) p (p : ps)
                        | otherwise      = go n (p + 1) ps

main :: IO ()
main = print . last $ factors 600851475143
