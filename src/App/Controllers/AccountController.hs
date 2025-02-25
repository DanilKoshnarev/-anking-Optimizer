module App.Controllers.AccountController where

import Domain.UseCases.ManageAccounts
import Infrastructure.Persistence.Postgres.AccountRepositoryImpl
import Infrastructure.Config
import Domain.Entities.Account

createAccountHandler :: Account -> IO ()
createAccountHandler account = do
    conn <- connectDb
    let repo = AccountRepositoryImpl conn
    createAccount repo account

viewAccountHandler :: Int -> IO ()
viewAccountHandler accountId = do
    conn <- connectDb
    let repo = AccountRepositoryImpl conn
    account <- viewAccount repo accountId
    print account
