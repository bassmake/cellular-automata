module ElementaryCellularAutomaton
  ( defaultRule
  ) where

import           ElementaryCellularAutomaton.Cell
import           ElementaryCellularAutomaton.Neighbourhood
import           ElementaryCellularAutomaton.Row
import           ElementaryCellularAutomaton.Rule

defaultRule :: Row
defaultRule = initRow defaultSize

defaultSize :: Int
defaultSize = 100

initRow :: Int -> Row
initRow size = Row (side ++ [One] ++ side)
  where
    side = replicate size Zero
