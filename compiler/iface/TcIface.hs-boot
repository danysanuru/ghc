module TcIface where

import IfaceSyn    ( IfaceDecl, IfaceClsInst, IfaceFamInst, IfaceRule,
                     IfaceAnnotation, IfaceCompleteMatch )
import TyCoRep     ( TyThing )
import TcRnTypes   ( IfL )
import InstEnv     ( ClsInst )
import FamInstEnv  ( FamInst )
import CoreSyn     ( CoreRule )
import HscTypes    ( CompleteMatch )
import Annotations ( Annotation )

tcIfaceDecl         :: IfaceDecl -> IfL TyThing
tcIfaceRules        :: [IfaceRule] -> IfL [CoreRule]
tcIfaceInst         :: IfaceClsInst -> IfL ClsInst
tcIfaceFamInst      :: IfaceFamInst -> IfL FamInst
tcIfaceAnnotations  :: [IfaceAnnotation] -> IfL [Annotation]
tcIfaceCompleteSigs :: [IfaceCompleteMatch] -> IfL [CompleteMatch]
