module ElementaryCellularAutomaton
  ( rows
  , nextRow
  ) where

import           ElementaryCellularAutomaton.Cell
import           ElementaryCellularAutomaton.Neighbourhood
import           ElementaryCellularAutomaton.Row
import           ElementaryCellularAutomaton.Rule

rows :: [Row]
rows = initRow defaultSize : map (nextRow defaultConfiguration) rows

defaultSize :: Int
defaultSize = 100

defaultConfiguration :: RuleConfiguration
defaultConfiguration = configuration 90

initRow :: Int -> Row
initRow size = Row (side ++ [One] ++ side)
  where
    side = replicate size Zero

nextRow :: RuleConfiguration -> Row -> Row
nextRow conf row = Row (map (nextState conf) $ neighbourhoods row)
