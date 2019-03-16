module ElementaryCellularAutomaton 
  ( simple
  ) where

import Data.Text as T

data Cell = One | Zero deriving (Eq, Show)

data Neighbourhood = Neighbourhood Cell Cell Cell

type Row = [Cell]

nextRow :: [Neighbourhood] -> [Cell]
nextRow row = []

simple :: Row
simple = [Zero, Zero, Zero, Zero, One, Zero, Zero, Zero, Zero]