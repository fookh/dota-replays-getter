module Replay.Run
    ( mainLoop
    ) where

import Control.Monad (forever, when)
import Control.Concurrent (threadDelay)

import Replay.Types (Config, FilledGameInfo, LiveGameInfo)
import Replay.Games.GetGames (watchLiveGames)

mainLoop :: Config -> IO ()
mainLoop config = forever $ doStuff config

doStuff :: Config -> IO ()
doStuff config = do
    putStrLn "Je suis en vie"
    liveGames <- watchLiveGames config
    print liveGames
    threadDelay 5000000
    -- filledGames <- fillInfos liveGames 
    -- stockGame filledGames

fillInfos :: [LiveGameInfo] -> IO [FilledGameInfo]
fillInfos = undefined

stockGame :: [FilledGameInfo] -> IO ()
stockGame = undefined
