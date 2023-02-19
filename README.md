# Binary-Trees-Haskell
There are several examples of tree programs you can learn from. Read descriptions of them below<br><br>
<b>isBalanced.hs</b><br>
Define a function that decides whether a tree is balanced.<br>
We call a tree balanced if the differences of the heights of left subtree and right subtree at each node differ at most by 1.<br>
Is the tree that you have given as an example balanced?<br><br>
<b>flattenTree.hs</b><br>
A tree is called search tree if it flattens to a list that is ordered.<br>
Give two examples of trees such that one of them is a search tree but the other isn’t. Compute the flattenings of both trees.<br>
Write a function insert such that if n is an integer and t is a search tree then insert n t is again a search tree that contains the nodes of t and in addition the integer n. If n occurs already in t, then insert n t should be equal to t.<br><br>
<b>mapTree.hs</b><br>
mapTree f t is obtained by applying the relabelling f to the labels of t.<br>
In particular, we should have flatten (mapTree f t) = map f (flatten t)<br>
(you do not need to prove that).<br>
mulTree :: Tree (Tree a) -> Tree a<br>
takes as input a tree whose leaves are labelled by trees and outputs a tree such that we have<br>
flatten (mulTree tt) = concat (flatten (mapTree flatten tt))<br>
for every input tree tt (you do not need to prove that either).<br>
In particular every label of mulTree tt should occur in a tree being a label in tt.<br>
For example, if <br>
tt = Node [Leaf (Leaf 3),Leaf (Node [Leaf 4,Leaf 5])],<br>
then mulTree tt = Node [Leaf 3,Node [Leaf 4,Leaf 5]].

