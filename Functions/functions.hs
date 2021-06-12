import Data.List
import System.IO
-- compile the code via ghc --make <nameOfProgram>
-- run via ./<nameOfProgram>

main = do
    putStrLn "What is your name"
    name <- getLine
    putStrLn("hello " ++name)