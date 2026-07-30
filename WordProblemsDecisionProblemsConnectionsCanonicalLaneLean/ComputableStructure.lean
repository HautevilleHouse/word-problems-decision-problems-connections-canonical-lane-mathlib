import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure ComputableStructure where
  carrier : Type u
  operations : List (carrier -> carrier)
  relations : List (carrier -> Prop)
  decidableEquality : Prop
  enrichedWithEffectiveProcedure : Prop

structure ComputableStructureEvidence (C : ComputableStructure) where
  decidableEqualityClosed : C.decidableEquality
  enrichedWithEffectiveProcedureClosed : C.enrichedWithEffectiveProcedure

def ComputableStructureClosed (C : ComputableStructure) : Prop :=
  C.decidableEquality ∧ C.enrichedWithEffectiveProcedure

theorem computable_structure_closed_from_evidence (C : ComputableStructure)
    (E : ComputableStructureEvidence C) : ComputableStructureClosed C := by
  exact And.intro E.decidableEqualityClosed E.enrichedWithEffectiveProcedureClosed

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse