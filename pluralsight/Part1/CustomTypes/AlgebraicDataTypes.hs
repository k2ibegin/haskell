newtype CustomerId = CustomerId Int

-- argument of type CustomerId is the id of the customer
data Customer = MakeCustomer CustomerId String Int

alice :: Customer
alice = Customer (CustomerId 13) "Alice" 42

-- kind of new type, but with more arguments

-- simple use case tuples can be used

-- constructor is StringTree takes two arguments
-- 1. String, and second constructor argument is list of stringTree
-- e.g. heirarchy of directories and files
data StringTree = StringTree String [StringTree]

heirarchy =
  StringTree
    "C:"
    [ StringTree "ProgramFiles" [],
      StringTree
        "Users"
        [StringTree "Alice" []],
      StringTree "Cats" []
    ]

-- nice way to package some values together
-- named container