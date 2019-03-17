module ElementaryCellularAutomaton.RuleSpec
  ( spec
  ) where

import Test.Tasty
import Test.Tasty.HUnit
import ElementaryCellularAutomaton.Rule

spec :: TestTree
spec = testGroup "ElementaryCellularAutomaton-Rule" [validRuleSpec]

validRuleSpec = testCase "Valid rule"
  (assertEqual "rule 1" 1 (rule 1))