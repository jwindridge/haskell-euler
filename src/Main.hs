module Main where

import System.IO
import Util (promptLine)
import qualified Sols.Prob1
import qualified Sols.Prob2
import qualified Sols.Prob3
import qualified Sols.Prob4
import qualified Sols.Prob5
import qualified Sols.Prob6

solveProblem :: String -> String
solveProblem strProblemNumber
  | problemNumber == 1 = Sols.Prob1.solution
  | problemNumber == 2 = Sols.Prob2.solution
  | problemNumber == 3 = Sols.Prob3.solution
  | problemNumber == 4 = Sols.Prob4.solution
  | problemNumber == 5 = Sols.Prob5.solution
  | problemNumber == 6 = Sols.Prob6.solution
  | otherwise          = "Not solved yet"
  where problemNumber = read strProblemNumber :: Int

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  problemNumber <- promptLine "Enter problem number: "
  putStrLn (solveProblem problemNumber)
