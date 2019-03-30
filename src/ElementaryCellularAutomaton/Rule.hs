module ElementaryCellularAutomaton.Rule
  ( RuleNumber
  , rule
  ) where

import           Data.Bits
import           ElementaryCellularAutomaton.Cell
import           ElementaryCellularAutomaton.Neighbourhood

type RuleNumber = Int

rule :: Int -> RuleNumber
rule n
  | 0 <= n && n <= 255 = n
  | otherwise = error "must be number from 0 to 255"

type Configuration = [Cell]

configuration :: [Cell] -> Configuration
configuration cells
  | length cells == 8 = cells
  | otherwise = error "configration must have 8 cells"

--configuration :: RuleNumber -> Configuration
--configuration ruleNumber = Configuration
bits :: RuleNumber -> [Cell]
bits = reverse . rBits

rBits :: RuleNumber -> [Cell]
rBits 0 = []
rBits n
  | n `mod` 2 == 0 = Zero : rBits (n `div` 2)
  | n `mod` 2 == 1 = One : rBits (n `div` 2)
