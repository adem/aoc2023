module Day1 where

import Data.Char
import Data.Maybe

stringToInt :: String -> Maybe Integer
stringToInt s = case reads s of
  [(num, "")] -> Just num
  _ -> Nothing

toCalibrationValue :: String -> Maybe Integer
toCalibrationValue s = stringToInt $ head (filter isDigit s) : last (filter isDigit s) : ""

solve1 :: String -> Integer
solve1 s = sum (mapMaybe toCalibrationValue (lines s))

solve1_test :: (Bool, Integer)
solve1_test = (solve1 input == 142, solve1 input)
  where
    input =
      "1abc2\n\
      \pqr3stu8vwx\n\
      \a1b2c3d4e5f\n\
      \treb7uchet"
