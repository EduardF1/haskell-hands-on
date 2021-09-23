-- Single line Comment --
{-
    Multi line comment
-}
-- Imports
import Data.List
import System.IO
import Text.XHtml (unordList)
import Text.XHtml.Frameset (unordList)
import Text.XHtml.Strict (unordList)

-- TYPES
-- Bool, Int, Integer, Float, Double, Char, [Char], Tuples ()

-- :: Bool (True or False)
trueAndFalse = True && False

trueOrFalse = True || False

notTrue = not (True)

-- :: Int
-- Whole number [-2^63, 2^63]
maxInt = maxBound :: Int

-- :: Integer
-- Unbounded Whole Number
-- G.P.: numFive :: Integer (specify the type)
numFive :: Integer
numFive = 5

-- :: Float
numFive' = 5.0 :: Float

-- :: Boolean
boolFive = 5 > 4

myFloat :: Float
-- :: Double (prefered by default by ghci)
myFloat = 1.0 + 2.5

myDouble = 1.55555555555 + 0.00000000001

-- :: Char
singleChar = 'a'

-- :: [Char]
myName = "Eduard"

myName' = ['E', 'D', 'U', 'A', 'R', 'D']

-- Simple math
addNum = 3 + 6

subNum = 3 - 6

multNum = 3 * 6

divNum = 3 / 6

modNum = mod 9 2

modNum' = 9 `mod` 2

addNeg = 4 + (-4)

-- Math utils: pi, exp, log, sin, cos, tan, asin, acos, atan
-- Other utils
truncDouble = truncate myDouble

roundDouble = round myDouble

ceilDouble = ceiling myDouble

floorDouble = floor myDouble

squareFive = sqrt numFive'

-- Lists
numList = [1, 2, 3, 4, 5]

rangeList = [1 .. 5]

alphaList = ['a' .. 'z']

evenNums = [2, 4 .. 20]

oddNums = [1, 3 .. 20]

oddAlpha = ['a', 'c' .. 'z']

sumNumList = sum [1 .. 5]

sumNumList' = sum numList

prodNumList = product numList -- 5!

elemList = elem 5 numList

elemList' = 5 `elem` numList -- check if a number is included in a list

fibNumbers = [1, 1, 2, 3, 5, 8]

moreFibs = [13, 21, 34, 55, 89, 144]

combineFibs = fibNumbers ++ moreFibs

maxFib = maximum combineFibs

minFib = minimum combineFibs

nestedLists = [[1, 1, 2, 3, 5, 8], [13, 21, 34, 55, 89, 144]]

nestedLists' = [fibNumbers, moreFibs]

myZip = zipWith (+) [1, 2, 3, 4, 5] [6, 7, 8, 9, 10]

zipFibs = zipWith (+) fibNumbers moreFibs

infOdds = [1, 3 ..] -- list of all odd numbers to infinity

takeOdds = take 20 infOdds

infFives = repeat 5 -- print 5 forever

takeFives = take 20 infFives -- print 20 times 5

replFive = replicate 20 5

cycleFibs = cycle combineFibs -- loop through the list forever

takeCycle = take 50 $ cycle [1 .. 10]

dropFibs = drop 5 combineFibs -- remove the first list members

filterFibs = filter (> 5) combineFibs

whileFibs = takeWhile (<= 88) combineFibs

mapList = map (* 2) [1 .. 10]

unorderedList = [444, 21, 33, 22, 0, 11, 943, 21]

sortList = sort unorderedList

{-
    1. head combineFibs -> return the first element in the list
    2. tail combineFibs -> return the list without the first element
    3. last combineFibs -> return the last element in the list
    4. init combineFibs -> return the list without the last element
-}

multilist = foldr (*) 1 [2 .. 5]

-- foldr f e ([]) -> 2 * (3 * (4 * (5 * 1)))
minusList = foldl (-) 1 [2 .. 5]

-- foldl f e ([]) -> (((((1) -5) -4) -3) -2)
sumFold = foldl (+) 0 [1 .. 100]

consList = 1 : [] -- prepend 1 to the empty list

consList' = 1 : 2 : 3 : 4 : 5 : [] -- prepend [1..5] to the list

infFibs = 0 : 1 : zipWith (+) infFibs (tail infFibs)

-- [0,1] ([1]) -> [0,1,1,2] [1,1,2] -> ...
listFunc = [x * y | x <- [1 .. 5], y <- [1 .. 5]]

listFunc' = [x * y | x <- [1 .. 5], y <- [1 .. 5],
             x * y `mod` 3 == 0]

-- Tuples
myTuple = ("Jimmy Carter", 1)
getName = fst myTuple
getId = snd myTuple

empNames = ["John Doe", "Jane Doe", "Mary Jane", "R. Brooks"]
empID = [1,2,3,4]
empList :: [(String, Integer)]
empList = zip empNames empID

add a b = a + b
multiply a b = a*b
func a b c = add (multiply a b) c

sayHello = "Hello, Haskell!"
-- main = do
--     putStrLn "Enter your name:"
--     name <- getLine
--     putStrLn ("Hello, " ++ name ++ "!")

nonUppercase :: [Char] -> [Char]
nonUppercase s = [c | c <- s, elem c ['a'..'z']]

main = do
    let s = nonUppercase "Eduard is vigilent..."
    print(s)