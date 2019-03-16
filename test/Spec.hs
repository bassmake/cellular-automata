import Test.Tasty
import Test.Tasty.HUnit

sayYo :: String -> String
sayYo to = "Yo " ++ to ++ "!"

add5 :: Int -> Int
add5 i = i + 5

main :: IO ()
main = do
  defaultMain (testGroup "Our Library Tests" [sayYoTest, add5Test])

sayYoTest :: TestTree
sayYoTest = testCase "Testing sayYo"
  (assertEqual "Should say Yo to Friend!" "Yo Friend!" (sayYo "Friend"))

add5Test :: TestTree
add5Test = testCase "Testing add5"
  (assertEqual "Should add 5 to get 10" 10 (add5 5))
