import Data.List

-- Find the Kth element of the list

kthElement :: (Num a, Eq a) => [a] -> a ->  a
kthElement [] _ = error "Cannot get an element out of an empty list"
kthElement xs n = let p = (\x acc -> if x == n then x else acc)
                  in foldl p 0 xs
