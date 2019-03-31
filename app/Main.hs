module Main where

import qualified Data.Text.IO                as TIO
import           ElementaryCellularAutomaton

main :: IO ()
main = do
  putStrLn "Which rule?"
  print defaultRule
