import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure AdmissibleClass where
  object : WordProblemAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WordProblemWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse