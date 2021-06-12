import Data.List
import System.IO

-- list example with concatenation with another list
primeNumbers = [3,5,7,11]
morePrime = primeNumbers ++ [13,17]

-- prepare a list from different numbers
favNums = 2 : 7 : 8 : 9 : []

-- 2 dimension list
multlist = [[2,4,5],[6,7,8]]

-- add at front of list
add2AtFrontOfTheList = 2 : morePrime

-- length of list
lenPrime = length morePrimes2

--reverse list
revPrime = reverse morePrimes2

-- is list empty
isListEmpty = null morePrimes2

-- third prime
thirdPrime = morePrimes2 !! 2

--gets first value in the list
firstPrime = head morePrimes2

--gets everything but first value in the list
tailPrime = tail morePrimes2

--last value in the list
lastPrime = last morePrimes2

-- cycle replicates the values in a list indefinitely 
cycleList = take 30 (cycle [1,2,3,4,5])

-- take a list of 10 indexes with repeated 2
many2s = take 10 (repeat 2)

-- repeat a number x times
many3s = replicate 10 3
