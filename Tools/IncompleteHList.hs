{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TypeOperators #-}
-- This module contains overloaded functions for creating an HList from a tuple
-- or a tuple from an HList.
-- The /toHList/ function creates an HList from a tuple.
-- The /fromHList/ function creates a tuple from an HList.
module HList (HLst(toHList, fromHList)) where

import Data.Tuple.OneTuple (OneTuple(OneTuple))
import Data.HList (HNil(HNil), HCons(HCons), (:*:), hEnd, hBuild)

class HLst a b | a -> b where
    toHList   :: a -> b
    fromHList :: b -> a

instance HLst (OneTuple a1) (a1 :*: HNil) where
    toHList   (OneTuple a1)   = hEnd $ hBuild a1
    fromHList (HCons a1 HNil) = OneTuple a1
