import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WordProblemWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse