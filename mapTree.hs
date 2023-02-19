data Tree a = Leaf a | Node [Tree a]
    deriving (Show, Eq)
flatten :: Tree a -> [a]
flatten (Leaf x) = [x]
flatten (Node l) = concat (map flatten l)

sample = Node[Node[Leaf 3, Leaf 4], Leaf 5]

mapTree :: (a -> b) -> Tree a -> Tree b
mapTree f (Leaf n)    = Leaf m
                           where m = f n
mapTree f (Node xs) = Node [mapTree f x | x <- xs]

-- >>> mapTree (*10) sample
-- Node [Node [Leaf 30,Leaf 40],Leaf 50]

mulTree :: Tree (Tree a) -> Tree a
mulTree (Leaf x) = x
mulTree (Node xs) = Node [mulTree x | x <- xs]

tt = Node [Leaf (Leaf 3),Leaf (Node [Leaf 4,Leaf 5])]

-- >>> mulTree tt
-- Node [Leaf 3,Node [Leaf 4,Leaf 5]]

-- >>> foldl (/) 64 [4,2,4]
-- 2.0

-- >>> foldr (/) 2 [8,12,24,4]
-- 8.0
