import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesGraphsGraphTheoreticAspectsCanonicalLaneLean

structure GraphGameAdmittedObject where
  graph : Type u
  topology : TopologicalSpace graph
  gameValue : ℝ
  equilibriumExists : Prop
  conclusion : equilibriumExists

structure AdmissibleClass where
  object : GraphGameAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GraphGameWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GamesGraphsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse