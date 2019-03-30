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
    , configuration0
    , configuration1
    , configuration2
    , configuration184
    , configuration255
    ]

validRuleSpec = testCase "Valid rule can be created" $ rule 1 @?= 1

configuration0 =
  testCase "0 rule configuration can be created" $
  configuration 0 @?= [Zero, Zero, Zero, Zero, Zero, Zero, Zero, Zero]

configuration1 =
  testCase "1 rule configuration can be created" $
  configuration 1 @?= [Zero, Zero, Zero, Zero, Zero, Zero, Zero, One]

configuration2 =
  testCase "2 rule configuration can be created" $
  configuration 2 @?= [Zero, Zero, Zero, Zero, Zero, Zero, One, Zero]

configuration184 =
  testCase "184 rule configuration can be created" $
  configuration 184 @?= [One, Zero, One, One, One, Zero, Zero, Zero]

configuration255 =
  testCase "255 rule configuration can be created" $
  configuration 255 @?= [One, One, One, One, One, One, One, One]
