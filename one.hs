import Data.List

-- Find the last element in the list

lastElem :: [a] -> a
lastElem xs = head (reverse xs)

lastElem' :: [a] -> a
lastElem' xs = last xs

lastElem'' :: [a] -> a
lastElem'' [] = error "Cant get the last element of an empty list"
lastElem'' [x] = x
lastElem'' (_:xs) = lastElem'' xs
