module ElementaryCellularAutomatonSpec
  ( spec
  ) where

import Test.Tasty
import Test.Tasty.HUnit

import qualified ElementaryCellularAutomaton.RuleSpec as Rule
import qualified ElementaryCellularAutomaton.CellSpec as Cell

spec :: TestTree
spec = testGroup "ElementaryCellularAutomaton-Rule" [Cell.spec, Rule.spec]
