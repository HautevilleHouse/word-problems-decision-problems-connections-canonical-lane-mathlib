import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure MarkovPropertyPackage where
  propertyDefined : Prop
  recognizableSubset : Prop
  indexSetAdmitted : Prop
  closureUnderReduction : Prop

structure MarkovPropertyEvidence (M : MarkovPropertyPackage) where
  propertyDefinedClosed : M.propertyDefined
  recognizableSubsetClosed : M.recognizableSubset
  indexSetAdmittedClosed : M.indexSetAdmitted
  closureUnderReductionClosed : M.closureUnderReduction

def MarkovPropertyClosed (M : MarkovPropertyPackage) : Prop :=
  M.propertyDefined ∧ M.recognizableSubset ∧ M.indexSetAdmitted ∧ M.closureUnderReduction

theorem markov_property_closed_from_evidence
    (M : MarkovPropertyPackage) (E : MarkovPropertyEvidence M) :
    MarkovPropertyClosed M := by
  exact And.intro E.propertyDefinedClosed
    (And.intro E.recognizableSubsetClosed
      (And.intro E.indexSetAdmittedClosed E.closureUnderReductionClosed))

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse
