isLeapYear :: Integer -> Bool
isLeapYear y = y `rem` 400 == 0 || y `rem` 4 == 0 && y `rem` 100 /= 0

days :: [Integer]
days = do
  y <- [1900..2000]
  if isLeapYear y
    then [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    else [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

main :: IO ()
main = print . length . filter ((== 6) . (`rem` 7)) . drop 12 . scanl1 (+) $ days
