module Main where

import XYZ.Lib
import XYZ.Two.Lib

main :: IO ()
main = do
  putStrLn $ show $ x + y
