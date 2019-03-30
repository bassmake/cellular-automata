module ElementaryCellularAutomaton.RuleSpec
  ( spec
  ) where

import           ElementaryCellularAutomaton.Cell
import           ElementaryCellularAutomaton.Rule
import           Test.Tasty
import           Test.Tasty.HUnit

spec :: TestTree
spec =
  testGroup
    "Rule"
    [ validRuleSpec
    , bitsZeroSpec
    , bitsOneSpec
    , bitsTwoSpec
    , bitsThreeSpec
    , bitsFourSpec
    , bitsFiveSpec
    , bitsSixSpec
    ]

validRuleSpec = testCase "Valid rule can be created" $ rule 1 @?= 1

bitsZeroSpec = testCase "bits 0" $ bits 0 @?= []

bitsOneSpec = testCase "bits 1" $ bits 1 @?= [One]

bitsTwoSpec = testCase "bits 2" $ bits 2 @?= [One, Zero]

bitsThreeSpec = testCase "bits 3" $ bits 3 @?= [One, One]

bitsFourSpec = testCase "bits 4" $ bits 4 @?= [One, Zero, Zero]

bitsFiveSpec = testCase "bits 5" $ bits 5 @?= [One, Zero, One]

bitsSixSpec = testCase "bits 6" $ bits 6 @?= [One, One, Zero]
