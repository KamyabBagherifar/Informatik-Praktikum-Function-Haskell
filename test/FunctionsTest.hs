{-# LANGUAGE TemplateHaskell #-}

module FunctionsTest where
import Functions

import Test.QuickCheck

prop_conjecture x = x>0&&x<100 ==>collatz x == 1

return []
main = $quickCheckAll
