module App.Controllers.TransactionController where

import Domain.UseCases.OptimizeTransactions
import Infrastructure.Persistence.Postgres.TransactionRepositoryImpl
import Infrastructure.Config

optimizeHandler :: IO ()
optimizeHandler = do
    conn <- connectDb
    let repo = TransactionRepositoryImpl conn
    transactions <- optimizeTransactions repo
    print transactions
