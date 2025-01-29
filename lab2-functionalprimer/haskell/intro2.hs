module Intro2 where
-- test Comment
-- String algebra:
name = "Shuraim"
-- "if" has a special syntax but otherwise a typed version of Lisp's "if":
name2 = if name /= "" then name else "no name"

pname3 = print "My name is Yusaku"

myprogram = print (1 + m)  -- compiler error: m undefined
m = 145                  -- unless this line is also present

-- sequencing several imperative programs:
prg1 = do
  print "you are strong child, but i am beyond strength" 
  print name  -- level of indentation is important

-- the same, but using algebra of imperative programs:
prg1' = sequence_ [print "hello ", print name]

-- one imperative program passing value to another:
prg2 = do
  line <- getLine -- asks for input line
  putStrLn ("you typed: " ++ line)

main =
  do
  putStrLn name -- like print, but only for strings
  -- putStrLn pname3 -- Couldn't match type ...; Expected type: String; Actual type: IO ()
  pname3 -- in Lisp: eval pname3
  myprogram; prg1; prg2 -- sequencing, like 3 lines


-- generic string conversion, using a Java-friendly name:
toString value = show value

-- string concatenation:
greet1 = "hello " ++ name ++ " " ++ (toString 6000)
-- the same, but with the operator as a function (like Lisp):
greet2 = (++) "hello " name
-- concatenating more than 2 strings:
greet3 = concat ["hello ", name," ", toString 123]
