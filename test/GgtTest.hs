{-# LANGUAGE TemplateHaskell #-}

module GgtTest where
import Functions

import Test.QuickCheck

-- ggT(a, a) = a
prop_idempotence a = ggT a a == a

return []
main = $quickCheckAll
