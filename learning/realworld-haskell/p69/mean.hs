
-- Array mean  -> sum / length

-- Calculate  the sum of a vector
mysum :: [Double] -> Double
mysum [] = 0
mysum (x:xs) = x + sum xs

-- Get vector length
mylength :: [a] -> Int
mylength [] = 0
mylength (x:xs) = 1 + mylength xs

-- Array mean value
mean :: [Double] -> Double
mean v = (mysum v) / (fromIntegral (mylength v))

