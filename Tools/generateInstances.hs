module Main where

import System.Environment (getArgs)
import Data.List (intercalate)

main :: IO ()
main = do
  a <- getArgs
  let n = read $ head a
  putStrLn $ generateInstances [2..n]

generateInstances :: [Int] -> String
generateInstances is = intercalate "\n\n" $ map generateInstance is

generateInstance :: Int -> String
generateInstance i = intercalate "\n" [instanceStr, toHListStr, fromHListStr]
  where instanceStr    = "instance HLst " ++ tupleType ++ " " ++ hlistType ++ " where"
        toHListStr     = indent ++ "toHList " ++ tuplePattern ++ " = " ++ hlistConstruct
        fromHListStr   = indent ++ "fromHList " ++ hlistPattern ++ " = " ++ tupleConstruct
        indent         = take 4 $ repeat ' '
        vars           = ["a" ++ show j | j <- [1..i]]
        tuple          = "(" ++ intercalate ", " vars ++ ")"
        tupleType      =  tuple
        tuplePattern   = tuple
        tupleConstruct = tuple
        hlistType      = "(" ++ intercalate " :*: " (vars ++ ["HNil"]) ++ ")"
        hlistPattern   = intercalate " " (map ("(HCons "++) vars) ++ " HNil" ++ take i (repeat ')')
        hlistConstruct = "hEnd $ hBuild " ++ unwords vars
