import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure WordProblemSignature where
  alphabet : Type u
  generators : alphabet
  inverses : alphabet -> alphabet
  identity : alphabet
  multiplication : alphabet -> alphabet -> alphabet
  associativity : Prop
  identityLaw : Prop
  inverseLaw : Prop

structure WordProblemInstance (S : WordProblemSignature) where
  word : List S.alphabet
  reduced : Prop
  reducedTerm : reduced

structure WordProblemEvidence (S : WordProblemSignature) (W : WordProblemInstance S) where
  reducedClosed : W.reduced

def WordProblemClosed (S : WordProblemSignature) (W : WordProblemInstance S) : Prop :=
  W.reduced

theorem word_problem_closed_from_evidence (S : WordProblemSignature) (W : WordProblemInstance S)
    (E : WordProblemEvidence S W) : WordProblemClosed S W := by
  exact E.reducedClosed

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse