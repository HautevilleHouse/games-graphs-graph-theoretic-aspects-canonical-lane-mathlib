import GamesGraphsGraphTheoreticAspectsCanonicalLaneLean.GraphGameAdmissible

namespace HautevilleHouse
namespace GamesGraphsGraphTheoreticAspectsCanonicalLaneLean

structure NashEquilibriumPackage where
  payoffStructure : Prop
  bestResponseMapping : Prop
  fixedPointEquilibrium : Prop
  equilibriumExistence : Prop

structure NashEquilibriumEvidence (N : NashEquilibriumPackage) where
  payoffStructureClosed : N.payoffStructure
  bestResponseMappingClosed : N.bestResponseMapping
  fixedPointEquilibriumClosed : N.fixedPointEquilibrium
  equilibriumExistenceClosed : N.equilibriumExistence

def NashEquilibriumClosed (N : NashEquilibriumPackage) : Prop :=
  N.payoffStructure ∧ N.bestResponseMapping ∧ N.fixedPointEquilibrium ∧ N.equilibriumExistence

theorem nash_equilibrium_closed_from_evidence (N : NashEquilibriumPackage) (E : NashEquilibriumEvidence N) :
    NashEquilibriumClosed N := by
  exact And.intro E.payoffStructureClosed (And.intro E.bestResponseMappingClosed (And.intro E.fixedPointEquilibriumClosed E.equilibriumExistenceClosed))

end GamesGraphsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse