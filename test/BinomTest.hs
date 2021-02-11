{-# LANGUAGE TemplateHaskell #-}

module BinomTest where
import Functions

import Test.QuickCheck

-- (n/0) = 1, fuer n>=0
prop_n_choose_0 n = n>=0 ==> binom n 0 == 1

return []
main = $quickCheckAll
