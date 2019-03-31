module ElementaryCellularAutomaton.CellSpec
  ( spec
  ) where

import           ElementaryCellularAutomaton.Cell
import           Test.Tasty
import           Test.Tasty.HUnit

spec :: TestTree
spec = testGroup "Cell" [cellZeroShow, cellOneShow]

cellZeroShow = testCase "Zero shown as '.'" $ show Zero @?= "."

cellOneShow = testCase "One shown as '#'" $ show One @?= "#"
