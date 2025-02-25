module Domain.Repositories.AccountRepository where

import Domain.Entities.Account

class AccountRepository repo where
    saveAccount :: repo -> Account -> IO ()
    findAccountById :: repo -> Int -> IO (Maybe Account)
    findAllAccounts :: repo -> IO [Account]
    deleteAccount :: repo -> Int -> IO ()
