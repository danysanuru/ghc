{-# LANGUAGE CPP, KindSignatures #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-} -- Wrinkle in Note [Trees That Grow]
                                      -- in module GHC.Hs.Extension
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE RoleAnnotations #-}
{-# LANGUAGE TypeFamilies #-}

{-# OPTIONS_GHC -Wno-orphans #-}

module GHC.Hs.Pat where

import GHC.Utils.Outputable
import GHC.Hs.Extension.GhcPass ( OutputableBndrId, GhcPass )

import GHC.Hs.Pat.Types

instance OutputableBndrId p => Outputable (Pat (GhcPass p))
