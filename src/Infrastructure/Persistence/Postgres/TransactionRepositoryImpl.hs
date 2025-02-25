module Infrastructure.Persistence.Postgres.TransactionRepositoryImpl where

import Domain.Entities.Transaction
import Domain.Repositories.TransactionRepository
import Database.PostgreSQL.Simple

data TransactionRepositoryImpl = TransactionRepositoryImpl Connection

instance TransactionRepository TransactionRepositoryImpl where
    saveTransaction (TransactionRepositoryImpl conn) transaction = undefined 
    findTransactionById (TransactionRepositoryImpl conn) id = undefined 
    findAllTransactions (TransactionRepositoryImpl conn) = undefined 
    deleteTransaction (TransactionRepositoryImpl conn) id = undefined 
