module Operators where

import Prelude hiding (max, not, odd)

add :: Int -> Int -> Int
add x y = x + y

addRec :: Int -> Int -> Int
addRec x 0 = x
addRec x y = addRec (x + 1) (y -1)

succ :: Int -> Int
succ x = x + 1

max :: Int -> Int -> Int
max a b
  | a > b = a
  | True = b

not' :: Bool -> Bool
not' a
  | a = False
  | True = True

or' :: Bool -> Bool -> Bool
or' a b = a || b

and' :: Bool -> Bool -> Bool
and' a b = a && b

nor' :: Bool -> Bool -> Bool
nor' a b = not' (or' a b)

nand' :: Bool -> Bool -> Bool
nand' a b = not' (and' a b)

odd' :: Int -> Bool
odd' a = mod a 2 == 1


