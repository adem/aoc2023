module Main where
import Day1

main :: IO ()
main = do
  putStrLn $ "solve1: " ++ if fst solve1_test then "ok" else "not ok: " ++ (show . snd) solve1_test
