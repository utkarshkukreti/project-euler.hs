toEnglish :: Integer -> String
toEnglish = go
  where
    go 1 = "one"
    go 2 = "two"
    go 3 = "three"
    go 4 = "four"
    go 5 = "five"
    go 6 = "six"
    go 7 = "seven"
    go 8 = "eight"
    go 9 = "nine"
    go 10 = "ten"
    go 11 = "eleven"
    go 12 = "twelve"
    go 13 = "thirteen"
    go 14 = "fourteen"
    go 15 = "fifteen"
    go 16 = "sixteen"
    go 17 = "seventeen"
    go 18 = "eighteen"
    go 19 = "nineteen"
    go n | n < 100 = case n `rem` 10 of
                       0 -> go' (n `div` 10)
                       r -> go' (n `div` 10) ++ " " ++ go r
                     where
                       go' 2 = "twenty"
                       go' 3 = "thirty"
                       go' 4 = "forty"
                       go' 5 = "fifty"
                       go' 6 = "sixty"
                       go' 7 = "seventy"
                       go' 8 = "eighty"
                       go' 9 = "ninety"
                       go' _ = undefined
    go n | n < 1000 = case n `rem` 100 of
                        0 -> go (n `div` 100) ++ " hundred"
                        r -> go (n `div` 100) ++ " hundred and " ++ go r
    go 1000 = "one thousand"
    go _ = undefined

main :: IO ()
main = print . length . filter (not . (== ' ')) . concat $ map toEnglish [1..1000]
