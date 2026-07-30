import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WordProblemsDecisionProblemsConnectionsCanonicalLaneLean.DecisionProblemReduction

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure UndecidabilityTransferPackage (A B : Type) where
  sourceUndecidable : Prop
  reduction : ReductionInstance A B
  targetUndecidableDerived : Prop

structure UndecidabilityTransferEvidence (A B : Type) (U : UndecidabilityTransferPackage A B) where
  sourceUndecidableClosed : U.sourceUndecidable
  reductionClosed : ReductionClosed A B U.reduction

def UndecidabilityTransferClosed (A B : Type) (U : UndecidabilityTransferPackage A B) : Prop :=
  U.sourceUndecidable ∧ ReductionClosed A B U.reduction

theorem undecidability_transfer_closed_from_evidence (A B : Type) (U : UndecidabilityTransferPackage A B)
    (E : UndecidabilityTransferEvidence A B U) : UndecidabilityTransferClosed A B U := by
  exact And.intro E.sourceUndecidableClosed E.reductionClosed

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse