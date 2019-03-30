module ElementaryCellularAutomaton.Rule
  ( RuleNumber,
    rule
  ) where 

import ElementaryCellularAutomaton.Cell
import ElementaryCellularAutomaton.Neighbourhood
import Data.Bits

type RuleNumber = Int

rule :: Int -> RuleNumber
rule n | 0 <= n && n <= 255 = n
       | otherwise          = error "must be number from 0 to 255"


--type Configuration = [Cell]

--configuration :: RuleNumber -> Configuration
--configuration ruleNumber = Configuration

bits :: RuleNumber -> [Cell]
bits 0 = []
bits n
  | n `mod` 2 == 0 = Zero : (bits $ n `div` 2)
  | n `mod` 2 == 1 = One : (bits $ n `div` 2)