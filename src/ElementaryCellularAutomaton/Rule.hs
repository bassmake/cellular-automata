module ElementaryCellularAutomaton.Rule
  ( RuleNumber
  , rule
  , configuration
  ) where

import           Data.Bits
import           ElementaryCellularAutomaton.Cell
import           ElementaryCellularAutomaton.Neighbourhood

type RuleNumber = Int

rule :: Int -> RuleNumber
rule n
  | 0 <= n && n <= 255 = n
  | otherwise =
    error ("must be number from 0 to 255. current value: " ++ show n)

type Configuration = [Cell]

configuration :: Int -> Configuration
configuration = configurationRule . rule

configurationRule :: RuleNumber -> Configuration
configurationRule rule = configurationSmart (filler ++ ruleBits)
  where
    ruleBits = bits rule
    filler = replicate (8 - length ruleBits) Zero

configurationSmart :: [Cell] -> Configuration
configurationSmart cells
  | length cells == 8 = cells
  | otherwise =
    error ("configration must have 8 cells. current value: " ++ show cells)

bits :: RuleNumber -> [Cell]
bits = reverse . rBits

rBits :: RuleNumber -> [Cell]
rBits 0 = []
rBits n
  | n `mod` 2 == 0 = Zero : rBits (n `div` 2)
  | n `mod` 2 == 1 = One : rBits (n `div` 2)
