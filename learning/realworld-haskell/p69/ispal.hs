
--
-- Is a list a palindrome or not
--
-- Ex 5 page 69

dropl ::(Eq a) => [a] -> [a]
dropl [] = []
dropl (x:xs)
	| xs == []	= []
	| otherwise = [x] ++ dropl xs


ispal :: (Eq a) => [a] -> Bool
ispal [] = True
ispal (x:xs) 
	| xs == [] 		= True
	| x == last xs 	= ispal (dropl xs)
	| otherwise		= False

