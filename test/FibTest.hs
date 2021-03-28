{-# LANGUAGE TemplateHaskell #-}

module FibTest where
import Functions

import Test.QuickCheck
import System.Exit(exitSuccess, exitFailure)


prop_fib_test_1 = do
     n <- choose (0, 30) :: Gen Int
     m <- choose (1, 30) :: Gen Int
     return $ fib (m+n) == fib (n+1) * fib m + fib n * fib(m-1)
                       
                       
                       
prop_fib_test_2 = do
     n <- choose (1, 30) :: Gen Int
     m <- choose (1, 30) :: Gen Int
     return $ ggT (fib m) (fib n) == fib (ggT m n) 



prop_fib_test_3 = do
    n <- choose (1, 30) :: Gen Int
    return $ ggT (fib n) (fib n+1) == 1 







return []
runTests = $quickCheckAll

main = runTests >>= \passed -> if passed then exitSuccess
                                         else exitFailure

