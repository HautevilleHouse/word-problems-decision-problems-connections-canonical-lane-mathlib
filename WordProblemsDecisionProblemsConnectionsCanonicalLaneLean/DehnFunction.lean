import canonicalLaneMathlib.AdmissibleClass

/-!
# Dehn Function Package
-/

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure DehnFunctionPackage (G : GeneratorsAndRelations) where
  isoperimetricFunction : ℕ → ℕ
  asymptoticGrowthClass : String
  subquadraticUpperBound : Prop
  exponentialLowerBound : Prop
  linearForHyperbolic : Prop

structure DehnFunctionEvidence (D : DehnFunctionPackage G) where
  subquadraticUpperBoundClosed : D.subquadraticUpperBound
  exponentialLowerBoundClosed : D.exponentialLowerBound
  linearForHyperbolicClosed : D.linearForHyperbolic

def DehnFunctionClosed (D : DehnFunctionPackage G) : Prop :=
  D.subquadraticUpperBound ∧ D.exponentialLowerBound ∧ D.linearForHyperbolic

theorem dehn_function_closed_from_evidence (D : DehnFunctionPackage G)
    (E : DehnFunctionEvidence D) : DehnFunctionClosed D := by
  exact And.intro E.subquadraticUpperBoundClosed
    (And.intro E.exponentialLowerBoundClosed E.linearForHyperbolicClosed)

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse