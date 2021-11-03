myLast [] = error "Empty"; myLast [x] = x; myLast (_:xs) = myLast xs
myButLast [] = error "Empty"; myButLast [_] = error "Only one"; myButLast [x,_] = x; myButLast (_:xs) = myButLast xs
elementAt [] _ = error "Index too high"; elementAt (x:xs) 1 = x; elementAt (x:xs) i = if i < 1 then error "Index too low" else elementAt xs (i-1)
myLength [] = 0; myLength (x:xs) = 1 + myLength xs
myReverse [] = []; myReverse (x:xs) = (myReverse xs) ++ [x]
isPalindrome s = s == (myReverse s)
