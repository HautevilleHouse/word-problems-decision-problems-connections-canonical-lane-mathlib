import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure HaltingProblemConfig where
  encoding : Type
  halts : encoding -> Prop
  undecidableHalting : Prop

structure HaltingProblemConfigEvidence (H : HaltingProblemConfig) where
  undecidableHaltingClosed : H.undecidableHalting

def HaltingProblemConfigClosed (H : HaltingProblemConfig) : Prop :=
  H.undecidableHalting

theorem halting_problem_config_closed_from_evidence (H : HaltingProblemConfig)
    (E : HaltingProblemConfigEvidence H) : HaltingProblemConfigClosed H := by
  exact E.undecidableHaltingClosed

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse