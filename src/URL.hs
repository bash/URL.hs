module URL where

import Data.Char (ord)
import Data.List (concat, isInfixOf)
import Numeric (showHex)

reservedChars = ":/?#[]@!$&()'*+,;= "

encodeChar char =
    if isInfixOf [char] reservedChars
        then
            "%" ++ (showHex (ord char) "")
        else
            [char]

encodeString str =
    concat (map encodeChar str)