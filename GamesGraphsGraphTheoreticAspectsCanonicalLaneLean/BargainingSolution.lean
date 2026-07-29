import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesGraphsGraphTheoreticAspectsCanonicalLaneLean

structure BargainingSolutionPackage where
  disagreementPoint : Prop
  feasibleSet : Prop
  solutionConcept : Prop

structure BargainingSolutionEvidence (B : BargainingSolutionPackage) where
  disagreementPointClosed : B.disagreementPoint
  feasibleSetClosed : B.feasibleSet
  solutionConceptClosed : B.solutionConcept

def BargainingSolutionClosed (B : BargainingSolutionPackage) : Prop :=
  B.disagreementPoint ∧ B.feasibleSet ∧ B.solutionConcept

theorem bargaining_solution_closed_from_evidence (B : BargainingSolutionPackage) (E : BargainingSolutionEvidence B) : BargainingSolutionClosed B := by
  exact And.intro E.disagreementPointClosed (And.intro E.feasibleSetClosed E.solutionConceptClosed)

end GamesGraphsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse