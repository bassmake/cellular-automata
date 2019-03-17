import Test.Tasty
import Test.Tasty.HUnit

import qualified ElementaryCellularAutomatonSpec as ECA

main :: IO ()
main = do
  defaultMain (testGroup "Cellular Automata Specs" [ECA.spec])
