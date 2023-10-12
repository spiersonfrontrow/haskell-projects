module Lib
    ( wordSearch,
      wordSearchHelper
    ) where


wordSearch :: String -> String -> Bool
wordSearch _ [] = False
wordSearch [] _ = True
wordSearch target (y:ys)
    | wordSearchHelper target (y:ys) = True
    | otherwise = wordSearch target ys


wordSearchHelper :: String -> String -> Bool
wordSearchHelper _ [] = False
wordSearchHelper [] _ = True
wordSearchHelper (x:xs) (y:ys) = x == y && wordSearchHelper xs ys  -- This checks whether the first string matches the beginning of the second string, recursively.