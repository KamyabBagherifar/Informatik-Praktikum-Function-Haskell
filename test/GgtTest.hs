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
prop_assoziativgesetz = do
     a <- choose (1, 30) :: Gen Int
     b <- choose (1, 30) :: Gen Int
     c <- choose (1, 30) :: Gen Int
     return $ ggT a (ggT b c) == ggT (ggT a b) c

prop_disitributibgesetz = do
    a <- choose (1, 30) :: Gen Int
    b <- choose (1, 30) :: Gen Int
    m <- choose (1, 30) :: Gen Int 
    return $ ggT (m*a) (m*b) == m * ggT a b
    
    
prop_last_test_1 a b = a > 0 && b > 0 && a > b ==> ggT a b == ggT (a-b) b
 
prop_last_test_2 a b = a > 0 && b > 0 && a < b ==> ggT a b == ggT a (b-a)
  


return []
runTests = $quickCheckAll

main = runTests >>= \passed -> if passed then exitSuccess
                                         else exitFailure

