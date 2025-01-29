module Intro1 where

-- define named constants:
r1 = 3
r2 = b^2 + 1/b where b = 2

-- define a function:
diff a b = abs (a - b)

r3 = diff (diff a a) a  where a = 1
r4 = diff (diff a b) b  where a = 1; b = 1

-- lists by enumeration
r5 = [1,3,4,1]
r6 = [1..5]

inc n = n + 1

r7 = map inc [1..3] -- map returns a list
r8 = map (diff 2) [1..3] -- compares each with diff of 2
r9 = map sqrt [1..9] -- returns square root of nubers 1-9 in a list

r10 = zip [1..3] (map sqrt [1..3]) -- zip combines tuple values, this one zips 1-3 with the square roots of 1-3, essentially mathing the number with its square root
r11 = zip [1..3] (map sqrt [1..2]) -- only zips up to 2 as 3 does not have a value to be zipped with

r12 = print [1..3] -- prints 1-3 in a list

main :: IO ()
main = pure ()