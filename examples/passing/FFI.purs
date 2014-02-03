module FFI where

foreign import foo :: String -> String

bar :: String -> String
bar = \x -> foo (x ++ "bar")

module FFIModuleTest where

import FFI

baz = \_ -> foo "test"
    
module Main where

main = Trace.trace "Done"
