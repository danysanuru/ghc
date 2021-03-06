module Settings.Builders.Ld (ldBuilderArgs) where

import Settings.Builders.Common

ldBuilderArgs :: Args
ldBuilderArgs = builder Ld ? mconcat [ getStagedSettingList ConfLdLinkerArgs
                                     , arg "-o", arg =<< getOutput
                                     , getInputs ]
