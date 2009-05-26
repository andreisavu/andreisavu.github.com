
--
-- Basic get tree height
--

data Tree a = Node a (Tree a) (Tree a) | Empty deriving (Eq, Show)

leftTree (Node a l r) = l
rightTree (Node a l r) = r

height t
	| t == Empty = 0
	| otherwise  = 1 + max (height (leftTree t)) (height (rightTree t)) 

test1 = let
	t = Node "x" Empty (Node "y" Empty (Node "z" Empty Empty))
	in height t

test2 = height t where t = Node "x" Empty Empty

