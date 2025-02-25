module Infrastructure.Persistence.Postgres.AccountRepositoryImpl where

import Domain.Entities.Account
import Domain.Repositories.AccountRepository
import Database.PostgreSQL.Simple

data AccountRepositoryImpl = AccountRepositoryImpl Connection

instance AccountRepository AccountRepositoryImpl where
    saveAccount (AccountRepositoryImpl conn) account = undefined 
    findAccountById (AccountRepositoryImpl conn) id = undefined 
    findAllAccounts (AccountRepositoryImpl conn) = undefined 
    deleteAccount (AccountRepositoryImpl conn) id = undefined 
