module XYZ.Two.Bad where

import Test.Tasty
import Test.Tasty.HUnit

test_bad :: TestTree
test_bad = testCase "bad" $ assertFailure "bad"

-- Remove this comment and you'll see that stack is building this file, because
-- this error will prevent it from compiling:
--
--test_typo :: TestTree
--test_typo = testCase "bad" $ assertFail "bad"
