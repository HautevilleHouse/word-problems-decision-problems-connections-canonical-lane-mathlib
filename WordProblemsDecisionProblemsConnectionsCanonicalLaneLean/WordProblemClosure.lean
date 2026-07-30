import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

def WordProblemClosed (O : AdmittedWordProblemObject) : Prop :=
  O.endpointStatement

theorem word_problem_closed_from_endpoint (O : AdmittedWordProblemObject) :
    WordProblemClosed O := by
  exact O.endpointStatementWitness

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse
