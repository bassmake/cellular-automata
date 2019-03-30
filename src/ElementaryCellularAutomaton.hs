module ElementaryCellularAutomaton
  ( simple
  ) where

import           Data.Text                                 as T
import           ElementaryCellularAutomaton.Cell
import           ElementaryCellularAutomaton.Neighbourhood
import           ElementaryCellularAutomaton.Row

nextRow :: [Neighbourhood] -> Row
nextRow row = Row []

simple :: Row
simple = Row [Zero, Zero, Zero, Zero, One, Zero, Zero, Zero, Zero]
