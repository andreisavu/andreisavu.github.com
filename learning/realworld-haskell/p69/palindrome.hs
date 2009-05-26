
--
-- Turn a list into a palindrome
--

palindrome :: [a] -> [a]
palindrome [] = []
palindrome (x:xs) = [x] ++ palindrome xs  ++ [x]

