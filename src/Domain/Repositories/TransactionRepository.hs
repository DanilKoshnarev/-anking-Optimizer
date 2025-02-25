module Domain.Repositories.TransactionRepository where

import Domain.Entities.Transaction

class TransactionRepository repo where
    saveTransaction :: repo -> Transaction -> IO ()
    findTransactionById :: repo -> Int -> IO (Maybe Transaction)
    findAllTransactions :: repo -> IO [Transaction]
    deleteTransaction :: repo -> Int -> IO ()
