import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure DiophantineEquationsHilbert where
  polynomialType : Type
  integerSolutionExists : Prop
  undecidable : Prop

structure DiophantineEquationsHilbertEvidence (D : DiophantineEquationsHilbert) where
  integerSolutionExistsClosed : D.integerSolutionExists
  undecidableClosed : D.undecidable

def DiophantineEquationsHilbertClosed (D : DiophantineEquationsHilbert) : Prop :=
  D.integerSolutionExists ∧ D.undecidable

theorem diophantine_equations_hilbert_closed_from_evidence (D : DiophantineEquationsHilbert)
    (E : DiophantineEquationsHilbertEvidence D) : DiophantineEquationsHilbertClosed D := by
  exact And.intro E.integerSolutionExistsClosed E.undecidableClosed

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse