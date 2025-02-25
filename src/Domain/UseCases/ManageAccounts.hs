module Domain.UseCases.ManageAccounts where

import Domain.Entities.Account
import Domain.Repositories.AccountRepository

createAccount :: (AccountRepository repo) => repo -> Account -> IO ()
createAccount repo account = saveAccount repo account

viewAccount :: (AccountRepository repo) => repo -> Int -> IO (Maybe Account)
viewAccount repo accountId = findAccountById repo accountId

viewAllAccounts :: (AccountRepository repo) => repo -> IO [Account]
viewAllAccounts repo = findAllAccounts repo

removeAccount :: (AccountRepository repo) => repo -> Int -> IO ()
removeAccount repo accountId = deleteAccount repo accountId
