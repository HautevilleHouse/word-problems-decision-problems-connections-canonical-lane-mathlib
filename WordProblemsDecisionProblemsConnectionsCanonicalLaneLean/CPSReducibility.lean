import canonicalLaneMathlib.AdmissibleClass

/-!
# CPS Reducibility Package
-/

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure CPSReducibilityPackage {G : GeneratorsAndRelations}
    {S : SemiThueSystem G} (D : DegreeFunction S) where
  cpsBound : ℕ
  smallOverlapCondition : Prop
  geometricShapeConstraint : Prop
  cpsDerivationBounds : Prop

structure CPSReducibilityEvidence {G : GeneratorsAndRelations}
    {S : SemiThueSystem G} {D : DegreeFunction S}
    (C : CPSReducibilityPackage D) where
  cpsBoundClosed : C.cpsBound = 0
  smallOverlapConditionClosed : C.smallOverlapCondition
  geometricShapeConstraintClosed : C.geometricShapeConstraint
  cpsDerivationBoundsClosed : C.cpsDerivationBounds

def CPSReducibilityClosed {G : GeneratorsAndRelations}
    {S : SemiThueSystem G} {D : DegreeFunction S}
    (C : CPSReducibilityPackage D) : Prop :=
  C.cpsBound = 0 ∧ C.smallOverlapCondition ∧ C.geometricShapeConstraint ∧ C.cpsDerivationBounds

theorem cps_reducibility_closed_from_evidence
    {G : GeneratorsAndRelations} {S : SemiThueSystem G}
    {D : DegreeFunction S} (C : CPSReducibilityPackage D)
    (E : CPSReducibilityEvidence C) : CPSReducibilityClosed C := by
  exact And.intro E.cpsBoundClosed
    (And.intro E.smallOverlapConditionClosed
      (And.intro E.geometricShapeConstraintClosed E.cpsDerivationBoundsClosed))

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse