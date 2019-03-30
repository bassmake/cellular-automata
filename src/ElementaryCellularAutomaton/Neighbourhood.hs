module ElementaryCellularAutomaton.Neighbourhood
  ( Neighbourhood(..)
  ) where

import           ElementaryCellularAutomaton.Cell

data Neighbourhood =
  Neighbourhood Cell
                Cell
                Cell
