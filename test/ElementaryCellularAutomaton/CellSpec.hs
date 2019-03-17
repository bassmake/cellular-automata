module ElementaryCellularAutomaton.CellSpec
  ( spec
  ) where

import Test.Tasty
import Test.Tasty.HUnit
import ElementaryCellularAutomaton.Cell
    
spec :: TestTree
spec = testGroup "Cell" [cellZeroShow, cellOneShow]

cellZeroShow = testCase "Zero shown as ' '" $ (show Zero) @?= " "
  
cellOneShow = testCase "One shown as '#'" $ (show One) @?=  "#"
