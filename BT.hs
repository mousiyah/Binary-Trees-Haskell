-- 2020

data Tree = Leaf Int | Node Tree Int Tree
    deriving (Show, Eq)

-- balanced
sample = Node (Node (Leaf 4) 3 (Leaf 5)) 15 
            (Node (Leaf 0) 1 (Leaf 2))

-- unbalanced      
sample2 = Node (Node (Leaf 4) 3 (Node (Leaf 7) 5 (Leaf 8))) 15 (Leaf 4)

treeHeight :: Tree -> Int
treeHeight (Leaf _) = 0
treeHeight (Node (Leaf _) _ (Leaf _)) = 1
treeHeight (Node l _ r) | treeHeight l >= treeHeight r = 1 + treeHeight l
                        | otherwise                    = 1 + treeHeight r

isBalanced :: Tree -> Bool
isBalanced (Leaf _) = True
isBalanced (Node l _ r) = abs(treeHeight l - treeHeight r) <= 1 
                            && isBalanced l && isBalanced r

-- >>> isBalanced sample
-- True
            
-- >>> isBalanced sample2
-- False
