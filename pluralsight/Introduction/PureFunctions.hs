-- All haskell functions are pure
--  can not modify a global/external or local immutable state.
-- e.g. Modifiying immutable variable, writing to a file, writing to a command line
--  can not depend on state (that could be modified via reading from a file .. file deleted, not available etc)
--  Given the same arguments, always returns the same output (i.e. pure function can only depend upon arguments)

-- non pure function
-- Print a string to the console -- modifies external state (what appears on a console)
-- read a string from a file -- depends on external state at different times
-- get the current time
-- random number generator (returns a different value each time it is called, also it depends on some external state that is changing)

-- pure function
-- compute the length of a string
