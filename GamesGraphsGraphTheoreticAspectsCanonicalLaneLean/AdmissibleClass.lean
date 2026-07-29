import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesGraphsGraphTheoreticAspectsCanonicalLaneLean

structure AdmissibleClass where
  object : GameGraphObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GameGraphWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GamesGraphsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse