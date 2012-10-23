{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TypeOperators #-}

{- |
This module contains overloaded functions for creating an HList from a tuple or
a tuple from an HList.
-}
module HList (HLst(toHList, fromHList)) where

import Data.Tuple.OneTuple (OneTuple(OneTuple))
import Data.HList (HNil(HNil), HCons(HCons), (:*:), hEnd, hBuild)

class HLst a b | a -> b where
    -- |Creates an HList from a tuple.
    toHList   :: a -> b
    -- |Creates a tuple from an HList.
    fromHList :: b -> a

instance HLst (OneTuple a1) (a1 :*: HNil) where
    toHList   (OneTuple a1)   = hEnd $ hBuild a1
    fromHList (HCons a1 HNil) = OneTuple a1
