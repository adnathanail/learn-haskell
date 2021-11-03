fib 0 = 0; fib 1 = 1; fib x = x * fib (x-1)
max [x] = x; max (x:xs) = if x > y then x else y where y = max xs
replicate 0 _ = []; replicate x y = y:(replicate (x-1) y)
take 0 _ = []; take _ [] = []; take i (x:xs) = x:(take (i-1) xs)
reverse [] = []; reverse (x:xs) = (reverse xs) ++ [x]
zip [] _ = []; zip _ [] = []; zip (x:xs) (y:ys) = (x,y):(zip xs ys)
elem _ [] = False; elem e (x:xs) | e == x = True | otherwise = (elem e xs)
map _ [] = []; map f (x:xs) = (f x):(map f xs)

qs [] = []; qs (x:xs) = sm ++ [x] ++ lg where sm = qs [a | a <- xs, a <= x]; lg = qs [a | a <- xs, a > x]
zipwith _ [] _ = []; zipwith _ _ [] = []; zipwith f (x:xs) (y:ys) = (f x y):(zipwith f xs ys)
  zip = zipwith join where join x y = (x, y)
filter _ [] = []; filter p (x:xs) | p x = x : (filter p xs) | otherwise = (filter p xs)