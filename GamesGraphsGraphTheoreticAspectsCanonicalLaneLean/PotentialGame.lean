import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesGraphsGraphTheoreticAspectsCanonicalLaneLean

structure PotentialGamePackage where
  payoffFunction : Prop
  potentialFunction : Prop
  improvementPaths : Prop
  convergenceToEquilibrium : Prop

structure PotentialGameEvidence (P : PotentialGamePackage) where
  payoffFunctionClosed : P.payoffFunction
  potentialFunctionClosed : P.potentialFunction
  improvementPathsClosed : P.improvementPaths
  convergenceToEquilibriumClosed : P.convergenceToEquilibrium

def PotentialGameClosed (P : PotentialGamePackage) : Prop :=
  P.payoffFunction ∧ P.potentialFunction ∧ P.improvementPaths ∧ P.convergenceToEquilibrium

theorem potential_game_closed_from_evidence (P : PotentialGamePackage)
    (E : PotentialGameEvidence P) : PotentialGameClosed P := by
  exact And.intro E.payoffFunctionClosed
    (And.intro E.potentialFunctionClosed
      (And.intro E.improvementPathsClosed E.convergenceToEquilibriumClosed))

end GamesGraphsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse