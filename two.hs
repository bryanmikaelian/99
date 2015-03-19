import Data.List

-- Find the second to last one in the list

secondToLast :: [a] -> a
secondToLast xs = head (reverse (init xs))

secondToLast' :: (Eq a) => [a] -> a
secondToLast' xs = head ([x | x <- xs, x == secondToLast xs])

secondToLast'' :: (Eq a) => [a] -> a
secondToLast'' xs = head (findSecondToLast xs)
    where findSecondToLast xs = [x | x <- xs, x == secondToLast xs]
