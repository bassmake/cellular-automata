module ElementaryCellularAutomaton.RowSpec
  ( spec
  ) where

import           ElementaryCellularAutomaton.Cell
import           ElementaryCellularAutomaton.Row
import           Test.Tasty
import           Test.Tasty.HUnit

spec :: TestTree
spec = testGroup "Row" [emptyRowShow, rowShow]

emptyRowShow = testCase "Empty row shown as ''" $ show (Row []) @?= ""

rowShow =
  testCase "Non empty shown as '# ## '" $
  show (Row [One, Zero, One, One, Zero]) @?= "# ## "
