module Composition where
import Operators
import Functions
import Prelude hiding (even)

even' :: Int -> Bool
even' a = not' (odd' a)


evenfib :: Int -> Bool
evenfib a = even' (fib a)

