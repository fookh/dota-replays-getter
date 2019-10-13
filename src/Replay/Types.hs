{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

module Replay.Types
    ( Config(..)
    , GameList(..) 
    , LiveGameInfo(..)
    , FilledGameInfo(..)
    ) where

import Data.Aeson (FromJSON, parseJSON, genericParseJSON, (.:), withObject)
import Data.Aeson.Types (camelTo2, defaultOptions, fieldLabelModifier)
import GHC.Generics (Generic)
import Data.Int (Int64)

import Replay.Types.Heroes (HeroName(..))

newtype Config = Config { getSteamAPIKey :: String }

newtype GameList = GameList { gameList :: [LiveGameInfo] }
    deriving (Show, Generic)

instance FromJSON GameList where 
    parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = camelTo2 '_' }

-- {
--     "game_list":[
--         {   "activate_time":1570972672,
--             "deactivate_time":0,
--             "server_steam_id":90129768562806792,
--             "lobby_id":26354505663253570,
--             "league_id":0,
--             "lobby_type":7,
--             "game_time":1956,
--             "delay":120,
--             "spectators":1327,
--             "game_mode":22,
--             "average_mmr":8600,
--             "match_id":5067762847,
--             "series_id":0,
--             "sort_score":10427,
--             "last_update_time":1570975360,
--             "radiant_lead":-8647,
--             "radiant_score":20,
--             "dire_score":21,
--             "players":[
--                 {   "account_id":104758571,
--                     "hero_id":13
--                 }
--             ], 
--             "building_state":9568484
--         }
--     ]
-- }

data LiveGameInfo = LiveGameInfo 
    { matchId    :: Int64
    , averageMmr :: Int
    , players    :: [PlayersInfo]
    } deriving (Show, Generic)

instance FromJSON LiveGameInfo where
    parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = camelTo2 '_' }

data PlayersInfo = PlayersInfo
    { accountId :: Int64
    , heroId    :: HeroName
    } deriving Show

instance FromJSON PlayersInfo where
    -- parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = camelTo2 '_' }
    parseJSON = withObject "" $ 
        \v -> PlayersInfo <$> v .: "account_id"
                          <*> fmap toEnum (v .: "hero_id")

data FilledGameInfo = FilledGameInfo 
    { getPlayers'    :: [String]
    , getGameID'     :: String
    , getGameStatus' :: Bool
    }