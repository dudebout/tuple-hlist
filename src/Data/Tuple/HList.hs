{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TypeOperators #-}
-- This module contains overloaded functions for creating an HList from a tuple
-- or a tuple from an HList.
-- The /toHList/ function creates an HList from a tuple.
-- The /fromHList/ function creates a tuple from an HList.
module Data.Tuple.HList (HLst(toHList, fromHList)) where

import Data.Tuple.OneTuple (OneTuple(OneTuple))
import Data.HList (HNil(HNil), HCons(HCons), (:*:), hEnd, hBuild)

class HLst a b | a -> b where
    toHList   :: a -> b
    fromHList :: b -> a


instance HLst (OneTuple a1) (a1 :*: HNil) where
    toHList   (OneTuple a1)   = hEnd $ hBuild a1
    fromHList (HCons a1 HNil) = OneTuple a1

--snip-----------------
---- Machine generated code below, see Tools/MkTuple.hs
---- mkTuple hlist 15
instance HLst (a1, a2) (a1 :*: a2 :*: HNil) where
    toHList (a1, a2) = hEnd $ hBuild a1 a2
    fromHList (HCons a1 (HCons a2 HNil)) = (a1, a2)

instance HLst (a1, a2, a3) (a1 :*: a2 :*: a3 :*: HNil) where
    toHList (a1, a2, a3) = hEnd $ hBuild a1 a2 a3
    fromHList (HCons a1 (HCons a2 (HCons a3 HNil))) = (a1, a2, a3)

instance HLst (a1, a2, a3, a4) (a1 :*: a2 :*: a3 :*: a4 :*: HNil) where
    toHList (a1, a2, a3, a4) = hEnd $ hBuild a1 a2 a3 a4
    fromHList (HCons a1 (HCons a2 (HCons a3 (HCons a4 HNil)))) = (a1, a2, a3, a4)

instance HLst (a1, a2, a3, a4, a5) (a1 :*: a2 :*: a3 :*: a4 :*: a5 :*: HNil) where
    toHList (a1, a2, a3, a4, a5) = hEnd $ hBuild a1 a2 a3 a4 a5
    fromHList (HCons a1 (HCons a2 (HCons a3 (HCons a4 (HCons a5 HNil))))) = (a1, a2, a3, a4, a5)

instance HLst (a1, a2, a3, a4, a5, a6) (a1 :*: a2 :*: a3 :*: a4 :*: a5 :*: a6 :*: HNil) where
    toHList (a1, a2, a3, a4, a5, a6) = hEnd $ hBuild a1 a2 a3 a4 a5 a6
    fromHList (HCons a1 (HCons a2 (HCons a3 (HCons a4 (HCons a5 (HCons a6 HNil)))))) = (a1, a2, a3, a4, a5, a6)

instance HLst (a1, a2, a3, a4, a5, a6, a7) (a1 :*: a2 :*: a3 :*: a4 :*: a5 :*: a6 :*: a7 :*: HNil) where
    toHList (a1, a2, a3, a4, a5, a6, a7) = hEnd $ hBuild a1 a2 a3 a4 a5 a6 a7
    fromHList (HCons a1 (HCons a2 (HCons a3 (HCons a4 (HCons a5 (HCons a6 (HCons a7 HNil))))))) = (a1, a2, a3, a4, a5, a6, a7)

instance HLst (a1, a2, a3, a4, a5, a6, a7, a8) (a1 :*: a2 :*: a3 :*: a4 :*: a5 :*: a6 :*: a7 :*: a8 :*: HNil) where
    toHList (a1, a2, a3, a4, a5, a6, a7, a8) = hEnd $ hBuild a1 a2 a3 a4 a5 a6 a7 a8
    fromHList (HCons a1 (HCons a2 (HCons a3 (HCons a4 (HCons a5 (HCons a6 (HCons a7 (HCons a8 HNil)))))))) = (a1, a2, a3, a4, a5, a6, a7, a8)

instance HLst (a1, a2, a3, a4, a5, a6, a7, a8, a9) (a1 :*: a2 :*: a3 :*: a4 :*: a5 :*: a6 :*: a7 :*: a8 :*: a9 :*: HNil) where
    toHList (a1, a2, a3, a4, a5, a6, a7, a8, a9) = hEnd $ hBuild a1 a2 a3 a4 a5 a6 a7 a8 a9
    fromHList (HCons a1 (HCons a2 (HCons a3 (HCons a4 (HCons a5 (HCons a6 (HCons a7 (HCons a8 (HCons a9 HNil))))))))) = (a1, a2, a3, a4, a5, a6, a7, a8, a9)

instance HLst (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10) (a1 :*: a2 :*: a3 :*: a4 :*: a5 :*: a6 :*: a7 :*: a8 :*: a9 :*: a10 :*: HNil) where
    toHList (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10) = hEnd $ hBuild a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
    fromHList (HCons a1 (HCons a2 (HCons a3 (HCons a4 (HCons a5 (HCons a6 (HCons a7 (HCons a8 (HCons a9 (HCons a10 HNil)))))))))) = (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10)

instance HLst (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11) (a1 :*: a2 :*: a3 :*: a4 :*: a5 :*: a6 :*: a7 :*: a8 :*: a9 :*: a10 :*: a11 :*: HNil) where
    toHList (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11) = hEnd $ hBuild a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11
    fromHList (HCons a1 (HCons a2 (HCons a3 (HCons a4 (HCons a5 (HCons a6 (HCons a7 (HCons a8 (HCons a9 (HCons a10 (HCons a11 HNil))))))))))) = (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11)

instance HLst (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12) (a1 :*: a2 :*: a3 :*: a4 :*: a5 :*: a6 :*: a7 :*: a8 :*: a9 :*: a10 :*: a11 :*: a12 :*: HNil) where
    toHList (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12) = hEnd $ hBuild a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12
    fromHList (HCons a1 (HCons a2 (HCons a3 (HCons a4 (HCons a5 (HCons a6 (HCons a7 (HCons a8 (HCons a9 (HCons a10 (HCons a11 (HCons a12 HNil)))))))))))) = (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12)

instance HLst (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13) (a1 :*: a2 :*: a3 :*: a4 :*: a5 :*: a6 :*: a7 :*: a8 :*: a9 :*: a10 :*: a11 :*: a12 :*: a13 :*: HNil) where
    toHList (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13) = hEnd $ hBuild a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13
    fromHList (HCons a1 (HCons a2 (HCons a3 (HCons a4 (HCons a5 (HCons a6 (HCons a7 (HCons a8 (HCons a9 (HCons a10 (HCons a11 (HCons a12 (HCons a13 HNil))))))))))))) = (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13)

instance HLst (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14) (a1 :*: a2 :*: a3 :*: a4 :*: a5 :*: a6 :*: a7 :*: a8 :*: a9 :*: a10 :*: a11 :*: a12 :*: a13 :*: a14 :*: HNil) where
    toHList (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14) = hEnd $ hBuild a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14
    fromHList (HCons a1 (HCons a2 (HCons a3 (HCons a4 (HCons a5 (HCons a6 (HCons a7 (HCons a8 (HCons a9 (HCons a10 (HCons a11 (HCons a12 (HCons a13 (HCons a14 HNil)))))))))))))) = (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14)

instance HLst (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15) (a1 :*: a2 :*: a3 :*: a4 :*: a5 :*: a6 :*: a7 :*: a8 :*: a9 :*: a10 :*: a11 :*: a12 :*: a13 :*: a14 :*: a15 :*: HNil) where
    toHList (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15) = hEnd $ hBuild a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15
    fromHList (HCons a1 (HCons a2 (HCons a3 (HCons a4 (HCons a5 (HCons a6 (HCons a7 (HCons a8 (HCons a9 (HCons a10 (HCons a11 (HCons a12 (HCons a13 (HCons a14 (HCons a15 HNil))))))))))))))) = (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15)
