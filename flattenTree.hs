data Tree = Leaf | Node Tree Int Tree
    deriving (Show, Eq)
flatten :: Tree -> [Int]
flatten Leaf = []
flatten (Node l n r) = flatten l ++ [n] ++ flatten r

sample = Node (Node Leaf 3 (Node Leaf 7 Leaf)) 15 (Node Leaf 8 Leaf)

-- >>> flatten sample
-- [3,7,15,8]

sample2 = Node(Node (Node Leaf 1 Leaf) 3 (Node Leaf 7 Leaf)) 8 
            (Node (Node Leaf 10 Leaf) 20 (Node Leaf 21 Leaf))

-- >>> flatten sample2
-- [1,3,7,8,10,20,21]

insert :: Int -> Tree -> Tree
insert n Leaf = Node Leaf n Leaf
insert n (Node l m r) | n < m = Node (insert n l) m r
                      | n > m = Node l m (insert n r)
                      | otherwise = Node l m r

-- >>> flatten(insert 50 sample2)
-- [1,3,7,8,10,20,21,50]
