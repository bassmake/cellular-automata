module ElementaryCellularAutomatonSpec
  ( spec
  ) where

import           Test.Tasty
import           Test.Tasty.HUnit

import           ElementaryCellularAutomaton
import           ElementaryCellularAutomaton.Cell
import qualified ElementaryCellularAutomaton.CellSpec as Cell
import           ElementaryCellularAutomaton.Row
import qualified ElementaryCellularAutomaton.RowSpec  as Row
import           ElementaryCellularAutomaton.Rule
import qualified ElementaryCellularAutomaton.RuleSpec as Rule

spec :: TestTree
spec =
  testGroup
    "ElementaryCellularAutomaton-Rule"
    [Cell.spec, Row.spec, Rule.spec, nextRowSpec]

nextRowSpec =
  testCase "neighbourhoods for empty row must be empty" $
  nextRow rule row @?= Row [Zero, One, Zero, One, Zero, Zero]
  where
    rule = configuration 90
    row = Row [One, Zero, Zero, Zero, One, Zero]
