
--
-- Join a list using a separator value
--

join :: a -> [[a]] -> [a] 
join s [] = []
join s (x:xs) = [s] ++ x ++ (join s xs)

