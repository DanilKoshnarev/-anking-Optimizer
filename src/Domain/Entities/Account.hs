module Domain.Entities.Account where

data Account = Account
    { accountId :: Int
    , accountName :: String
    , balance :: Double
    } deriving (Show, Eq)
