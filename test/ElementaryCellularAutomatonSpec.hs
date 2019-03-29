module ElementaryCellularAutomatonSpec
  ( spec
  ) where

import Test.Tasty
import Test.Tasty.HUnit

import qualified ElementaryCellularAutomaton.CellSpec as Cell
import qualified ElementaryCellularAutomaton.RowSpec as Row
import qualified ElementaryCellularAutomaton.RuleSpec as Rule

spec :: TestTree
spec = testGroup "ElementaryCellularAutomaton-Rule" [Cell.spec, Row.spec, Rule.spec]
