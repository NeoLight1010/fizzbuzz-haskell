module Main where

fizzBuzz :: [Int] -> [String]
fizzBuzz = map fizzBuzzInt

fizzBuzzInt :: Int -> String
fizzBuzzInt x | x `mod` 15 == 0 = "FizzBuzz"
              | x `mod` 3 == 0 = "Fizz"
              | x `mod` 5 == 0 = "Buzz"
              | otherwise = show x

join :: Char -> [String] -> String
join sep (x:xs) = x ++ sep : join sep xs
join _ [] = []

main :: IO ()
main = putStrLn $ join '\n' $ fizzBuzz [1..30]
