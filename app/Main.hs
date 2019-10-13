module Main where

import Replay.Config (initialization)
import Replay.Run (mainLoop)

main :: IO ()
main = initialization >>= mainLoop
