import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesGraphsGraphTheoreticAspectsCanonicalLaneLean

structure GameGraphObject where
  vertexSet : Type u
  edgeRelation : vertexSet → vertexSet → Prop
  gameStructure : Prop
  solutionConcept : Prop
  conclusion : solutionConcept

def GameGraphWitnessClosed (O : GameGraphObject) : Prop :=
  O.solutionConcept

end GamesGraphsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse