module ElementaryCellularAutomaton.RowSpec
  ( spec
  ) where

import Test.Tasty
import Test.Tasty.HUnit
import ElementaryCellularAutomaton.Row
import ElementaryCellularAutomaton.Cell

spec :: TestTree
spec = testGroup "Row" [emptyRowShow, rowShow]

emptyRowShow = testCase "Empty row shown as ''" $ show (Row []) @?= ""

rowShow = testCase "Non empty shown as '# ## '" $ show (Row [One, Zero, One, One, Zero]) @?= "# ## "
