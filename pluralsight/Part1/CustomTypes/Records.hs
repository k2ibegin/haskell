newtype CustomerId = CustomerId Int

-- displayC :: CustomerId -> String
-- displayC (CustomerId x) = show x

data Customer = MakeCustomer
  { customerId :: CustomerId,
    name :: String,
    luckyNumber :: Int
  }

alice :: Customer
alice =
  MakeCustomer
    { customerId = CustomerId 12,
      name = "Alice",
      luckyNumber = 786
    }

-- access fields in record
-- customerId Alice
-- name Alice

-- records can be updated

sally = alice {name = "Sally", luckyNumber = 84}

-- note in above previous alice data is intact, as haskell functions are pure and values can not be modified once they are set

-- flaws
-- records are not extensible
-- no shared field names
-- weakes points of language and generally should be avoided, always almost use algebric data types
