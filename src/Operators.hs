module Operators where

add :: Int -> Int -> Int
add x y  = x + y

addRec :: Int -> Int -> Int
addRec x 0 = x
addRec x y = addRec (x+1) (y-1)

succ :: Int -> Int
succ x = x + 1