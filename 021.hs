d :: Integer -> Integer
d 1 = 1
d n = 1 + sum divisors + sum (map (n `div`) divisors) - subtract
      where
        root = floor . sqrt $ fromIntegral n
        divisors = filter ((== 0) . (n `rem`)) [2 .. root]
        subtract = if root * root == n then root else 0

isAmicable :: Integer -> Bool
isAmicable n = let dn = d n in n /= dn && n == d dn

main :: IO ()
main = print . sum . filter isAmicable $ [1..9999]
