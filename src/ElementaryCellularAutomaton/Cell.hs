module ElementaryCellularAutomaton.Cell
  ( Cell(..)
  ) where

data Cell
  = Zero
  | One
  deriving (Eq)

instance Show Cell where
  show Zero = " "
  show One  = "#"
