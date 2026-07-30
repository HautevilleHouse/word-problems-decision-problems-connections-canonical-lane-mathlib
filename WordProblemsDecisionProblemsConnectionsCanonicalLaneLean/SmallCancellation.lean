import canonicalLaneMathlib.AdmissibleClass

/-!
# Small Cancellation Package
-/

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure SmallCancellationPackage (G : GeneratorsAndRelations) where
  pieceLengthBound : ℕ
  smallCancellationCondition : String
  greendlingerLemma : Prop
  wordProblemSolubility : Prop
  isoperimetricInequality : Prop

structure SmallCancellationEvidence (C : SmallCancellationPackage G) where
  greendlingerLemmaClosed : C.greendlingerLemma
  wordProblemSolubilityClosed : C.wordProblemSolubility
  isoperimetricInequalityClosed : C.isoperimetricInequality

def SmallCancellationClosed (C : SmallCancellationPackage G) : Prop :=
  C.greendlingerLemma ∧ C.wordProblemSolubility ∧ C.isoperimetricInequality

theorem small_cancellation_closed_from_evidence (C : SmallCancellationPackage G)
    (E : SmallCancellationEvidence C) : SmallCancellationClosed C := by
  exact And.intro E.greendlingerLemmaClosed
    (And.intro E.wordProblemSolubilityClosed E.isoperimetricInequalityClosed)

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse