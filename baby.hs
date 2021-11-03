-- FUNCTIONS

-- doubleMe x = x + x
-- doubleMe x = x*2

-- doubleUs x y = x*2 + y*2
-- doubleUs x y = doubleMe x + doubleMe y
-- doubleUs x y = doubleMe (x + y)

-- doubleSmallNumber x = if x > 100
--                         then x
--                         else doubleMe x
-- doubleSmallNumber' x = (if x > 100
--                           then x
--                           else doubleMe x) + 1

-- Function names can contain ' but can't start with an uppercase letter


-- LISTS

-- "hello" ++ " " ++ "world" == "hello world"

-- Beware: ++ must walk the entire left side of the list whereas : is instantaneous

-- [1, 2, 3, 4, 5] !! 2 == 3
-- [1..5] !! 2 == 3

-- Comparisons occur "lexicographically"
-- first elements compared, then second if first were equal etc.

-- head [1,2,3] == 1
-- tail [1,2,3] == [2,3]
-- last [1,2,3] == 3
-- init [1,2,3] == [1,2]
-- length [1,2,3] == 3
-- null [1,2,3] == False
-- null [] == True

-- let boombang l = [if x < 10 then "BOOM!" else "BANG!" | x <- l, x `mod` 2 == 1] in boombang [3..20]
-- let length' l = sum [1 | _ <- l]
-- keepLowerCase st = [ c | c <- st, c ‘elem’ [‘a’..’z’]] 
-- let filterLower s = [x | x <- s, elem x ['A'..'Z']]




-- bmiTell :: (RealFloat a) => a -> a -> String  
-- bmiTell weight height  
--     | bmi <= 18.5 = "You're underweight, you emo, you!"  
--     | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
--     | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"  
--     | otherwise                 = "You're a whale, congratulations!"  
--   where bmi = weight / height ^ 2

-- holeScore :: Int -> Int -> String
-- holeScore weight height
--     | bmi <= 18.5 = "You're underweight, you emo, you!"
--     | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
--     | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
--     | otherwise                 = "You're a whale, congratulations!"
--  where score = strokes-par