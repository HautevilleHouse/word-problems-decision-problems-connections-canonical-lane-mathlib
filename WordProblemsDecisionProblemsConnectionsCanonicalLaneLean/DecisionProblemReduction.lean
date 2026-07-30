import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure ReductionInstance (A B : Type) where
  mapping : A -> B
  preimageComputable : Prop
  imageDecidable : Prop
  preimageDecidable : Prop
  reductionValid : Prop

structure ReductionEvidence (A B : Type) (R : ReductionInstance A B) where
  preimageComputableClosed : R.preimageComputable
  imageDecidableClosed : R.imageDecidable
  preimageDecidableClosed : R.preimageDecidable
  reductionValidClosed : R.reductionValid

def ReductionClosed (A B : Type) (R : ReductionInstance A B) : Prop :=
  R.preimageComputable ∧ R.imageDecidable ∧ R.preimageDecidable ∧ R.reductionValid

theorem reduction_closed_from_evidence (A B : Type) (R : ReductionInstance A B)
    (E : ReductionEvidence A B R) : ReductionClosed A B R := by
  exact And.intro E.preimageComputableClosed
    (And.intro E.imageDecidableClosed
      (And.intro E.preimageDecidableClosed E.reductionValidClosed))

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse