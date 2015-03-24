-- Flatten a nested list structure

data NestedList a = Elem a | List [NestedList a] deriving (Show)



flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List x) = concatMap flatten x
