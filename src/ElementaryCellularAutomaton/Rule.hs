module ElementaryCellularAutomaton.Rule
  ( rule
  ) where 

import ElementaryCellularAutomaton.Cell
import ElementaryCellularAutomaton.Neighbourhood

type Rule = Int

rule :: Int -> Rule
rule n | 0 <= n && n <= 255 = n
       | otherwise          = error "must be number from 0 to 255"


