{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}

module Replay.Games.GetGames
    ( watchLiveGames
    ) where

import Data.Aeson (FromJSON, genericParseJSON)
import Data.Aeson.Types (camelTo2, defaultOptions, fieldLabelModifier)
import Data.Proxy (Proxy(..))
import GHC.Generics (Generic)
import Network.HTTP.Client (newManager, defaultManagerSettings)
import Network.HTTP.Client.TLS (newTlsManager)
import Servant.Client
import Servant.API

import Replay.Types (Config(..), FilledGameInfo, GameList(..), LiveGameInfo)

type API = Get '[JSON] GameList

fetchGameList :: ClientM GameList
fetchGameList = client api

api :: Proxy API
api = Proxy

-- https://api.steampowered.com/IDOTA2Match_570/GetTopLiveGame/v1/?key=API_KEY&partner=0

-- Do not be an ass and describe the API parameters properly
buildBaseUrl :: Config -> BaseUrl
buildBaseUrl config =
    let path = "/IDOTA2Match_570/GetTopLiveGame/v1/?key=" <> getSteamAPIKey config <> "&partner=0"
    in BaseUrl Https "api.steampowered.com" 443 path

watchLiveGames :: Config -> IO [LiveGameInfo]
watchLiveGames config = do
    let baseUrl = buildBaseUrl config
    manager' <- newTlsManager
    res <- runClientM fetchGameList (mkClientEnv manager' baseUrl)
    case res of
      Left err -> fail $ "Error: " ++ show err
      Right pos -> pure $ gameList pos