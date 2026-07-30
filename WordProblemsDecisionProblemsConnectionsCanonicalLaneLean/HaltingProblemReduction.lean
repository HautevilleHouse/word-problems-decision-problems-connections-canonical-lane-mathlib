import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure HaltingProblemReduction where
  turingMachineModel : Type
  haltingProblemUndecidable : Prop
  reductionToWordProblem : Prop

structure HaltingProblemReductionEvidence (H : HaltingProblemReduction) where
  haltingProblemUndecidableClosed : H.haltingProblemUndecidable
  reductionToWordProblemClosed : H.reductionToWordProblem

def HaltingProblemReductionClosed (H : HaltingProblemReduction) : Prop :=
  H.haltingProblemUndecidable ∧ H.reductionToWordProblem

theorem halting_problem_reduction_closed_from_evidence (H : HaltingProblemReduction)
    (E : HaltingProblemReductionEvidence H) : HaltingProblemReductionClosed H := by
  exact And.intro E.haltingProblemUndecidableClosed E.reductionToWordProblemClosed

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse