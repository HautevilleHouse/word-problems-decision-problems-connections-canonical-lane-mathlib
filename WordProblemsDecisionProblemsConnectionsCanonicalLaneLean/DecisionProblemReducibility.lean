import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure ReducibilityPackage where
  sourceProblem : Type u
  targetProblem : Type v
  reductionMap : sourceProblem → targetProblem
  reductionCorrect : Prop
  sourceDecisionAdmitted : Prop
  targetDecisionAdmitted : Prop

structure ReducibilityEvidence (R : ReducibilityPackage) where
  reductionCorrectClosed : R.reductionCorrect
  sourceDecisionAdmittedClosed : R.sourceDecisionAdmitted
  targetDecisionAdmittedClosed : R.targetDecisionAdmitted

def ReducibilityClosed (R : ReducibilityPackage) : Prop :=
  R.reductionCorrect ∧ R.sourceDecisionAdmitted ∧ R.targetDecisionAdmitted

theorem reducibility_closed_from_evidence
    (R : ReducibilityPackage) (E : ReducibilityEvidence R) :
    ReducibilityClosed R := by
  exact And.intro E.reductionCorrectClosed
    (And.intro E.sourceDecisionAdmittedClosed E.targetDecisionAdmittedClosed)

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse
