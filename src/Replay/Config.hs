module Replay.Config
    ( initialization
    ) where

import Replay.Types (Config(..))

import System.Environment (lookupEnv)

initialization :: IO Config
initialization =
    Config . handleMissingEnv <$> lookupEnv "STEAM_API_KEY"

handleMissingEnv :: Maybe String -> String
handleMissingEnv Nothing    = fail "Missing STEAM_API_KEY from env"
handleMissingEnv (Just env) = env

