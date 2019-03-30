module ElementaryCellularAutomaton.RuleSpec
  ( spec
  ) where

import           ElementaryCellularAutomaton.Cell
import           ElementaryCellularAutomaton.Neighbourhood
import           ElementaryCellularAutomaton.Rule
import           Test.Tasty
import           Test.Tasty.HUnit

spec :: TestTree
spec = testGroup "Rule" (configurationSpecs ++ nextStateSpecs)

configurationSpecs =
  [ configuration0
  , configuration1
  , configuration2
  , configuration184
  , configuration255
  ]

nextStateSpecs =
  [nextState111, nextState110, nextState100, nextState001, nextState000]

rule184 = configuration 184

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
  rule184 @?= [One, Zero, One, One, One, Zero, Zero, Zero]

configuration255 =
  testCase "255 rule configuration can be created" $
  configuration 255 @?= [One, One, One, One, One, One, One, One]

nextState111 =
  testCase "111 for 184 rule gives 1" $
  nextState rule184 (Neighbourhood One One One) @?= One

nextState110 =
  testCase "110 for 184 rule gives 0" $
  nextState rule184 (Neighbourhood One One Zero) @?= Zero

nextState100 =
  testCase "100 for 184 rule gives 1" $
  nextState rule184 (Neighbourhood Zero One One) @?= One

nextState001 =
  testCase "001 for 184 rule gives 0" $
  nextState rule184 (Neighbourhood Zero Zero One) @?= Zero

nextState000 =
  testCase "000 for 184 rule gives 0" $
  nextState rule184 (Neighbourhood Zero Zero Zero) @?= Zero
