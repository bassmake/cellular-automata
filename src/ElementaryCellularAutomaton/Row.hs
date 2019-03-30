module ElementaryCellularAutomaton.Row
  ( Row(..)
  ) where

import           ElementaryCellularAutomaton.Cell

newtype Row =
  Row [Cell]

instance Show Row where
  show (Row [])     = ""
  show (Row (x:xs)) = show x ++ show (Row xs)
