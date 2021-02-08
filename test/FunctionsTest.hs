{-# LANGUAGE TemplateHaskell #-}

module FunctionsTest where
import Functions

import Test.QuickCheck

prop_conjecture x = x>0&&x<100 ==>collatz x == 1

prop_ggT x y = ggT x y == gcd x y


return []
main = $quickCheckAll
