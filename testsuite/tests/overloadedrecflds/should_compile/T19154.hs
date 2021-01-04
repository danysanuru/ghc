{-# LANGUAGE DataKinds              #-}
{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE OverloadedLabels       #-}
{-# LANGUAGE PolyKinds              #-}
{-# LANGUAGE RebindableSyntax       #-}
{-# LANGUAGE ScopedTypeVariables    #-}
{-# LANGUAGE TypeApplications       #-}

module Labels where

-- base
import Prelude
import Data.Kind
  ( Type )
import GHC.TypeLits
  ( Symbol, KnownSymbol )

--------------------------------------------------------------------------

data Label (k :: Symbol) (a :: Type) = Label

class IsLabel k a v | v -> a, v -> k where
  fromLabel :: v

instance KnownSymbol k => IsLabel k a (Label k a) where
  fromLabel = Label @k @a

foo :: Label k a -> ()
foo _ = ()

test :: ()
