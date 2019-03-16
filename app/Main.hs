module Main where

import ElementaryCellularAutomaton
import qualified Data.Text.IO as TIO

main :: IO ()
main = do
  putStrLn "Which rule?"
  print simple
