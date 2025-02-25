module Domain.Entities.Transaction where

data Transaction = Transaction
    { transactionId :: Int
    , amount :: Double
    , date :: String
    , accountId :: Int
    } deriving (Show, Eq)
