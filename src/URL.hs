--
-- (c) 2015 Ruben Schmidmeister
--

module URL (encodeChar, encodeString) where

import Data.Char (ord)
import Data.List (concat, isInfixOf)
import Numeric (showHex)

reservedChars = ":/?#[]@!$&()'*+,;= "


encodeChar :: Char -> String
encodeChar char =
    if isInfixOf [char] reservedChars
        then
            "%" ++ (showHex (ord char) "")
        else
            [char]


encodeString :: String -> String
encodeString str =
    concat (map encodeChar str)
