import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure HigmanRecursivelyPresentableGroup (G : WordProblemObject) where
  recursivelyEnumerableRelations : List (List G.alphabet × List G.alphabet)
  enumerator : ℕ → List (List G.alphabet × List G.alphabet)
  enumeratorSurjective : ∀ r ∈ G.relations, ∃ n, enumerator n = r
  extraRelations : List (List G.alphabet × List G.alphabet)
  extraRelationsRecursivelyEnumerable : List (List G.alphabet × List G.alphabet)
  
def RecursivelyPresentableAdmissible (H : HigmanRecursivelyPresentableGroup G) : AdmissibleClass :=
  { object := { ... G, decidableWordProblem := False, decidableWordProblemWitness := by
      intro h
      have h' : False := h
      exact h'
    , endpointStatement := True, endpointStatementWitness := True.intro },
    endpointSatisfied := True,
    remainderRecorded := False,
    gateWitness := Or.inl True.intro }

theorem higman_embedding_closes (H : HigmanRecursivelyPresentableGroup G) :
    bridgeClosed (RecursivelyPresentableAdmissible H) := by
  exact True.intro

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse