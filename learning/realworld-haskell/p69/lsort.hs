

--
-- Sort a list of lists by length
--

smaller :: [a] -> [b] -> Bool
smaller a b 
	| length(a) > length(b) = True
	| otherwise				= False


bigger :: [a] -> [b] -> Bool
bigger a b
	| length(a) < length(b) = True
	| otherwise			    = False


--
-- Quicksort using the cmp functions defined above
-- 
lsort :: (Ord a) => [[a]] -> [[a]]
lsort [] = []
lsort (x:xs) = 
	lsort (filter (smaller x) xs)
	++ [x] ++
	lsort (filter (bigger x) xs)

