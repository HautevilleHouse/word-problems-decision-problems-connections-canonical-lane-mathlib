import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure SemigroupWordProblemPackage where
  alphabetSize : Nat
  relationCount : Nat
  wordEqualityDecidable : Prop
  wordProblemAdmitted : Prop

structure SemigroupWordProblemEvidence (S : SemigroupWordProblemPackage) where
  wordEqualityDecidableClosed : S.wordEqualityDecidable
  wordProblemAdmittedClosed : S.wordProblemAdmitted

def SemigroupWordProblemClosed (S : SemigroupWordProblemPackage) : Prop :=
  S.wordEqualityDecidable ∧ S.wordProblemAdmitted

theorem semigroup_word_problem_closed_from_evidence
    (S : SemigroupWordProblemPackage) (E : SemigroupWordProblemEvidence S) :
    SemigroupWordProblemClosed S := by
  exact And.intro E.wordEqualityDecidableClosed E.wordProblemAdmittedClosed

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse
