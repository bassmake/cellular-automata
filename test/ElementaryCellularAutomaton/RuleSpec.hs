module ElementaryCellularAutomaton.RuleSpec
  ( spec
  ) where

import Test.Tasty
import Test.Tasty.HUnit
import ElementaryCellularAutomaton.Rule

spec :: TestTree
spec = testGroup "Rule" [validRuleSpec]

validRuleSpec = testCase "Valid rule can be created"
  (assertEqual "rule 1" 1 (rule 1))