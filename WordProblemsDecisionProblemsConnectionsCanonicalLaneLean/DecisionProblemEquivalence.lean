import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure DecisionProblemEquivalence {A B : AdmissibleClass} where
  forwardReduction : A.endpointSatisfied → B.endpointSatisfied
  backwardReduction : B.endpointSatisfied → A.endpointSatisfied
  remainderPreserved : A.remainderRecorded ↔ B.remainderRecorded

def DecisionProblemEquivalenceClosed {A B : AdmissibleClass} (E : DecisionProblemEquivalence A B) : Prop :=
  (E.forwardReduction (A.endpointSatisfied → B.endpointSatisfied)) ∧
  (E.backwardReduction (B.endpointSatisfied → A.endpointSatisfied)) ∧
  E.remainderPreserved

theorem equivalence_preserves_closure {A B : AdmissibleClass} (E : DecisionProblemEquivalence A B) :
    (ConstrainedWordProblemClosure A) ↔ (ConstrainedWordProblemClosure B) := by
  constructor
  · intro hA
    rcases hA with ⟨hA_bridge, hA_gate⟩
    have hB_bridge : bridgeClosed B := by
      intro b
      have hA_bridge' : bridgeClosed A := hA_bridge
      have h := hA_bridge' (E.backwardReduction b)
      -- Use forwardReduction to map back to B
      exact E.forwardReduction h
    have hB_gate : gateClosed B := by
      intro b
      have hA_gate' : gateClosed A := hA_gate
      have h := hA_gate' (E.backwardReduction b)
      exact E.forwardReduction h
    exact And.intro hB_bridge hB_gate
  · intro hB
    rcases hB with ⟨hB_bridge, hB_gate⟩
    have hA_bridge : bridgeClosed A := by
      intro a
      have hB_bridge' : bridgeClosed B := hB_bridge
      have h := hB_bridge' (E.forwardReduction a)
      exact E.backwardReduction h
    have hA_gate : gateClosed A := by
      intro a
      have hB_gate' : gateClosed B := hB_gate
      have h := hB_gate' (E.forwardReduction a)
      exact E.backwardReduction h
    exact And.intro hA_bridge hA_gate

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse