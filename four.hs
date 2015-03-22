import Data.List

-- Find the number of elements in a list

numOfElements :: [a] -> Int
numOfElements = foldl (\acc _ -> acc + 1) 0
