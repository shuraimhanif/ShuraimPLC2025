ask :: String -> IO ()
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  if line == ""
    then ask prompt
    else if line == "quit" --added an extra stateent that can quit--
      then putStrLn("quitting...")
    else putStrLn ("reversed, you said: " ++ reverse line)
  

main :: IO ()
main =
  do
  let prompt = "please say something"
  ask prompt