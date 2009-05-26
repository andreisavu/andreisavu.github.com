
--
-- Write a function to that computes the number of elements in a list
--
-- ... after testing add a type signate
--
-- should behave exactly like the built-in length
--
-- 
-- Ex 1,2 - page 69
--

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

