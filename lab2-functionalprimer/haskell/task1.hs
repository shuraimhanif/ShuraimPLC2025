module Main where
myFunc1 x = x*10
myFunc2 x = x*2 -- functions cannot begin with capitals (was 'MyFunc2')
thirdFunc = "Hello, this is 3rd Func" -- variables cannot start with numbers (was '3rdFunc')


main =
    do
    print (myFunc1 5)
    print (myFunc2 10)
    print (thirdFunc)

