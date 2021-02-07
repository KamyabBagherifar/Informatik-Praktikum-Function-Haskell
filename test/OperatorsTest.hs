{-# LANGUAGE TemplateHaskell #-}

module OperatorsTest where

import Test.QuickCheck

import Operators

prop_commutative x y = add x y == add y x

prop_commutativeRec x y = x>0&&y>0 ==> addRec x y == addRec y x

return []
main = $quickCheckAll
