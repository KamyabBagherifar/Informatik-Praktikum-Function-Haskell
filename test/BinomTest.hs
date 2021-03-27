{-# LANGUAGE TemplateHaskell #-}

module BinomTest where
import Functions

import Test.QuickCheck
import System.Exit(exitSuccess, exitFailure)


-- (n/0) = 1, fuer n>=0
prop_n_choose_0 n = n>=0 ==> binom n 0 == 1
prop_n_test_1 n = n>=0 ==> binom n n == 1
prop_n_test_2 n = n>=0 ==> binom n 1 == n
prop_n_test_3 = do 
      n <- choose (10, 30) :: Gen Int
      k <- choose (0, 10) :: Gen Int
      return $ binom n k == binom n (n - k)
prop_n_test_4 = do
     n <- choose (0, 30) :: Gen Int
     k <- choose (1, 30) :: Gen Int
     return $ binom n k == round (fromIntegral n / fromIntegral k * fromIntegral (binom (n - 1) (k - 1)))

prop_n_test_5 = do
     n <- choose (0, 30) :: Gen Int
     k <- choose (1, 30) :: Gen Int
     h <- choose (1, 30) :: Gen Int
     return $ binom n k == binom n k * binom (n-h) h
      

return []
runTests = $quickCheckAll

main = runTests >>= \passed -> if passed then exitSuccess
                                         else exitFailure

