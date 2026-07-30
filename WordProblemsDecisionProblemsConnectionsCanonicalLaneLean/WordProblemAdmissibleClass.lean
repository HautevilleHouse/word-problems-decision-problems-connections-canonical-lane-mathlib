import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure WordProblemObject where
  alphabet : Type
  generators : List alphabet
  relations : List (List alphabet × List alphabet)
  group : Type
  groupMul : group → group → group
  groupInv : group → group
  groupOne : group
  presentationMorphism : (List alphabet) → group
  presentationSurjective : ∀ g : group, ∃ w : List alphabet, presentationMorphism w = g
  relationHolds : ∀ (u, v) ∈ relations, presentationMorphism u = presentationMorphism v

structure AdmittedWordProblemObject extends WordProblemObject where
  decidableWordProblem : Prop
  decidableWordProblemWitness : decidableWordProblem
  endpointStatement : Prop
  endpointStatementWitness : endpointStatement

structure AdmissibleClass where
  object : AdmittedWordProblemObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WordProblemClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse
