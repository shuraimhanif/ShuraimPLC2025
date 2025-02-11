onePlusone = 
    print("1+1=2")

--conditionals--
sgn x = if x < 0 then -1 else if x == 0 then 0 else 1


main = do
    putStrLn "Welcome to the programme. Please enter your name"
    name <- getLine
    putStrLn("Hello " ++ name ++ ", hope you like Haskell.")
    onePlusone
    input <- getLine --gets number from input--
    let x = (read input :: Int) --assigns number to variable x--
    putStrLn(show (sgn (x))) --executes sgn function on number--