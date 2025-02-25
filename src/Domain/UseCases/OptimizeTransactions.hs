module Domain.UseCases.OptimizeTransactions where

import Domain.Entities.Transaction
import Domain.Repositories.TransactionRepository

optimizeTransactions :: (TransactionRepository repo) => repo -> IO [Transaction]
optimizeTransactions repo = do
    transactions <- findAllTransactions repo
    return transactions
