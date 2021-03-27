module Functions where




-- "Get Programming with Haskell" S. 80
collatz 1 = 1
collatz n = if even n
            then collatz (n `div` 2)
            else collatz (n*3 + 1)

ggT :: Int -> Int -> Int
ggT a b 
  | a == b || b == 0 = a
  | otherwise = ggT b (mod a b)

fact :: Int -> Int 
fact n 
  | n == 0 || n == 1 = 1
  | otherwise = fact (n-1) * n

binom :: Int -> Int -> Int
binom n k 
  | n == k || k== 0 = 1
  | k == 1 = n
  | k > n || k < 0 = 0
  | otherwise = binom (n -1) k + binom(n-1) (k -1)
  
  
fib :: Int -> Int
fib n
  | n == 0 = 0
  | n == 1 = 1
  | otherwise = fib(n-1) + fib(n-2) 
