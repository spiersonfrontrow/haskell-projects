module Main (main) where

import Lib

main :: IO ()
main = do
    putStrLn "String to search for:"
    inputString <- getLine
    putStrLn "Text to search within:"
    searchText <- getLine
    let result = wordSearch inputString searchText
    if result
        then putStrLn $ "The string " ++ inputString ++ " appears in the text!"
        else putStrLn $ "The string " ++ inputString ++ " does not appear in the text."