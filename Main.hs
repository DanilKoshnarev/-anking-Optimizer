module Main where

import App.Controllers.TransactionController
import App.Controllers.AccountController
import Domain.Entities.Account

main :: IO ()
main = do
    let account = Account { accountId = 1, accountName = "Main Account", balance = 1000.0 }
    createAccountHandler account
    viewAccountHandler 1
    optimizeHandler
