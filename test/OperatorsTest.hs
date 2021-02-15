{-# LANGUAGE TemplateHaskell #-}

module OperatorsTest where

import Test.QuickCheck
import System.Exit(exitSuccess, exitFailure)

import Operators

prop_commutative x y = add x y == add y 1

prop_commutativeRec x y = x>0&&y>0 ==> addRec x y == addRec y x

-- prop_max x y = Operators.max x y == Prelude.max x y



return []
runTests = $quickCheckAll

main = runTests >>= \passed -> if passed then exitSuccess
                                         else exitFailure


