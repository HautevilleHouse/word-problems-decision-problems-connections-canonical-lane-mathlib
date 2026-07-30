import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure GodelIncompletenessBridge where
  systemConsistent : Prop
  undecidableSentenceConstructed : Prop
  consistencyNotProvable : Prop

structure GodelIncompletenessEvidence (B : GodelIncompletenessBridge) where
  systemConsistentClosed : B.systemConsistent
  undecidableSentenceConstructedClosed : B.undecidableSentenceConstructed
  consistencyNotProvableClosed : B.consistencyNotProvable

def GodelIncompletenessClosed (B : GodelIncompletenessBridge) : Prop :=
  B.systemConsistent ∧ B.undecidableSentenceConstructed ∧ B.consistencyNotProvable

theorem godel_incompleteness_closed_from_evidence (B : GodelIncompletenessBridge)
    (E : GodelIncompletenessEvidence B) : GodelIncompletenessClosed B := by
  exact And.intro E.systemConsistentClosed
    (And.intro E.undecidableSentenceConstructedClosed E.consistencyNotProvableClosed)

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse