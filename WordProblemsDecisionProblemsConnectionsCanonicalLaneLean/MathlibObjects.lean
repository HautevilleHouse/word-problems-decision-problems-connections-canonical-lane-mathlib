import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure WordProblemSpace where
  carrier : Type
  finiteAlphabet : List (carrier)
  wordEquivalence : carrier → carrier → Prop

structure AdmittedWordProblemObject where
  space : WordProblemSpace
  finitelyPresentedGroup : Prop
  decisionProcedureExists : Prop
  haltingCondition : Prop
  conclusion : decisionProcedureExists

structure WordProblemEndgameState where
  object : AdmittedWordProblemObject

def WordProblemWitnessClosed (O : AdmittedWordProblemObject) : Prop :=
  O.decisionProcedureExists

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse