import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsDecisionProblemsConnectionsCanonicalLaneLean

structure WordProblemSpace where
  generatorSet : Type
  relationSet : Type
  presentation : Prop

def WordProblemWitnessClosed (O : WordProblemAdmittedObject) : Prop :=
  O.decidableWordProblem

structure WordProblemAdmittedObject where
  space : WordProblemSpace
  finitelyPresented : Prop
  decidableWordProblem : Prop
  conclusion : decidableWordProblem

end WordProblemsDecisionProblemsConnectionsCanonicalLaneLean
end HautevilleHouse