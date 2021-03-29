module Composition where
import Functions



even' :: Int -> Bool
even'  = not . odd


evenfib :: Int -> Bool
evenfib  = even . fib

