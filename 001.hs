main :: IO ()
main = print . sum . filter (\x -> x `rem` 3 == 0 || x `rem` 5 == 0) $ [1..999]
