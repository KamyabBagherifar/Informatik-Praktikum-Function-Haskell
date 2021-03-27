{-# LANGUAGE TemplateHaskell #-}

module GgtTest where
import Functions

import Test.QuickCheck
import System.Exit(exitSuccess, exitFailure)


-- ggT(a, a) = a
prop_idempotence_test a = a>0 ==> ggT a a == a
prop_neutrales_element a = a > 0 ==> ggT a 0 == a
prop_absorbierendes_element a = a > 0 ==> ggT a 1 == a
prop_kommutattivgesetz a b = a > 0 && b > 0 ==> ggT a b == ggT b a
-- prop_assoziativgesetz a b c = a > 0 && b > 0 && c > 0 ==> ggT(a ggT(b c)) == ggT (ggT a b c)



return []
runTests = $quickCheckAll

main = runTests >>= \passed -> if passed then exitSuccess
                                         else exitFailure

