isPrime :: Integer -> Bool
isPrime n = all ((/= 0) . (n `rem`)) [2 .. (floor . sqrt . fromIntegral $ n)]

primes :: [Integer]
primes = 2 : filter isPrime [3, 5 ..]

main :: IO ()
main = print $ primes !! 10000
