module ElementaryCellularAutomaton.Row
  ( Row(..)
  , neighbourhoods
  ) where

import           ElementaryCellularAutomaton.Cell
import           ElementaryCellularAutomaton.Neighbourhood

newtype Row =
  Row [Cell]

instance Show Row where
  show (Row [])     = ""
  show (Row (x:xs)) = show x ++ show (Row xs)

neighbourhoods :: Row -> [Neighbourhood]
neighbourhoods row =
  joinNeighbourhoods (outerNeighbourhoods row) (innerNeighbourhoods row)

joinNeighbourhoods ::
     Maybe (Neighbourhood, Neighbourhood) -> [Neighbourhood] -> [Neighbourhood]
joinNeighbourhoods Nothing _                 = []
joinNeighbourhoods (Just (begin, end)) inner = (begin : inner) ++ [end]

innerNeighbourhoods :: Row -> [Neighbourhood]
innerNeighbourhoods (Row []) = []
innerNeighbourhoods (Row (x:[])) = []
innerNeighbourhoods (Row (x:y:[])) = []
innerNeighbourhoods (Row (x:y:z:xs)) =
  (Neighbourhood x y z) : (innerNeighbourhoods (Row (y : z : xs)))

outerNeighbourhoods :: Row -> Maybe (Neighbourhood, Neighbourhood)
outerNeighbourhoods (Row []) = Nothing
outerNeighbourhoods (Row (x:[])) = Nothing
outerNeighbourhoods (Row row) =
  Just (Neighbourhood lastC headC head2C, Neighbourhood last2C lastC headC)
  where
    lastC = last row
    last2C = last $ init row
    headC = head row
    head2C = head $ tail row
