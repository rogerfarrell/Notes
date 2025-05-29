---
title: hledger documentation
author: '<https://hledger.org>'
---

# Home <https://hledger.org>

hledger is a plain text accounting tool built with Haskell. It embraces
the LEDGER text format, which tracks cash flow using the double entry
method.

# 10 minute quick start <https://hledger.org/10-minute-quick-start.html>

## Set up a journal

By default, hledger uses your `.hledger.journal` file in your home
directory. This can be changed in your shellrc file or with a symlink.

## Enter transactions

A basic ledger looks like this example from the documentation:

```hledger
2023-01-01 opening balances on january 1st
    assets:checking         $1000  ; a posting, increasing assets:checking's balance by $1000
    assets:cash              $100  ; write at least 2 spaces between account name and amount
    liabilities                $0
    equity                 $-1100  ; each transaction must sum to zero

2023-03-05 client payment
    assets:checking         $2000
    revenues:consulting    $-2000  ; revenues/liabilities/equity normally appear negative

2023-03-20 Sprouts
    expenses:food:groceries  $100
    assets:cash               $40
    assets:checking                ; a missing amount will be inferred ($-140 here)
```

Per the double entry accounting method, every ledger entry must be a
zero sum. You must list both the paying and receiving accounts.

## Import transactions

Transactions can be imported via CSVs. In order to do so, you need a CSV
rules file with the same name as the file you want to import. Notably,
this feature seems to be optimized for scripting with a MAKEFILE over
one-time imports. Imports can be re-run from the same file, as hledger
keeps track of previously imported transactions in a
`.latest.yourfile.csv`.
