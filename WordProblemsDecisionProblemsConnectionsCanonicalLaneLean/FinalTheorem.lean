import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WordProblemsDecisionProblemsConnectionsCanonicalLaneLean.WordProblemStructure
import HautevilleHouse.WordProblemsDecisionProblemsConnectionsCanonicalLaneLean.DecisionProblemReduction
import HautevilleHouse.WordProblemsDecisionProblemsConnectionsCanonicalLaneLean.HaltingProblemBridge

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | some => True
  | none => False

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedWordProblemClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  simp

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

theorem constrained_word_problem_endgame (A : AdmissibleClass) : ConstrainedWordProblemClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse