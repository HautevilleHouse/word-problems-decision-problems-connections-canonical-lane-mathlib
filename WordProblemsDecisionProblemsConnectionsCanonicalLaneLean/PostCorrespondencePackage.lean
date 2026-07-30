import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure PostCorrespondencePackage where
  alphabetType : Type
  tileCollection : List ((List alphabetType) × (List alphabetType))
  hasSolution : Prop
  undecidable : Prop

structure PostCorrespondenceEvidence (P : PostCorrespondencePackage) where
  hasSolutionClosed : P.hasSolution
  undecidableClosed : P.undecidable

def PostCorrespondenceClosed (P : PostCorrespondencePackage) : Prop :=
  P.hasSolution ∧ P.undecidable

theorem post_correspondence_closed_from_evidence (P : PostCorrespondencePackage)
    (E : PostCorrespondenceEvidence P) : PostCorrespondenceClosed P := by
  exact And.intro E.hasSolutionClosed E.undecidableClosed

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse