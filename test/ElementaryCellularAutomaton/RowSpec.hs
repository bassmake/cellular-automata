module ElementaryCellularAutomaton.RowSpec
  ( spec
  ) where

import           ElementaryCellularAutomaton.Cell
import           ElementaryCellularAutomaton.Neighbourhood
import           ElementaryCellularAutomaton.Row
import           Test.Tasty
import           Test.Tasty.HUnit

spec :: TestTree
spec =
  testGroup
    "Row"
    [ emptyRowShow
    , rowShow
    , neighbourhoodsForEmptySpec
    , neighbourhoodsForSingleSpec
    , neighbourhoodsSpec
    ]

emptyRowShow = testCase "Empty row shown as ''" $ show (Row []) @?= ""

rowShow =
  testCase "Non empty shown as '#.##.'" $
  show (Row [One, Zero, One, One, Zero]) @?= "#.##."

neighbourhoodsForEmptySpec =
  testCase "neighbourhoods for empty row must be empty" $
  neighbourhoods (Row []) @?= []

neighbourhoodsForSingleSpec =
  testCase "neighbourhoods for single cell row must be empty" $
  neighbourhoods (Row [One]) @?= []

neighbourhoodsSpec =
  testCase "neighbourhoods for not single cell row must be correct" $
  neighbourhoods (Row [One, Zero, Zero]) @?=
  [ Neighbourhood Zero One Zero
  , Neighbourhood One Zero Zero
  , Neighbourhood Zero Zero One
  ]
