import Control.Monad (liftM2)

isPalindrome :: Integer -> Bool
isPalindrome n = let s = show n
                 in s == reverse s

main :: IO ()
main = print . maximum . filter isPalindrome $ liftM2 (*) [100..999] [100..999]
