import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure BooneNovikovAdmissibleObject extends AdmittedWordProblemObject where
  constructionGroup : Type
  constructionRelators : List (List (Fin 2) × List (Fin 2))
  constructionMapping : WordProblemObject.alphabet → List (Fin 2)
  mappingInjective : Function.Injective constructionMapping
  decidableWordProblemImpliesUnsolved : decidableWordProblem → False

theorem boone_novikov_undecidability (B : BooneNovikovAdmissibleObject) :
    ¬ WordProblemClosed B := by
  intro h
  exact B.decidableWordProblemImpliesUnsolved h

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse
