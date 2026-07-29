import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesGraphsGraphTheoreticAspectsCanonicalLaneLean

structure NashEquilibriumPackage where
  payoffFunctions : Prop
  strategyProfiles : Prop
  bestResponseCondition : Prop
  equilibriumExistence : Prop

structure NashEquilibriumEvidence (N : NashEquilibriumPackage) where
  payoffFunctionsClosed : N.payoffFunctions
  strategyProfilesClosed : N.strategyProfiles
  bestResponseConditionClosed : N.bestResponseCondition
  equilibriumExistenceClosed : N.equilibriumExistence

def NashEquilibriumClosed (N : NashEquilibriumPackage) : Prop :=
  N.payoffFunctions ∧ N.strategyProfiles ∧ N.bestResponseCondition ∧ N.equilibriumExistence

theorem nash_equilibrium_closed_from_evidence (N : NashEquilibriumPackage)
    (E : NashEquilibriumEvidence N) : NashEquilibriumClosed N := by
  exact And.intro E.payoffFunctionsClosed
    (And.intro E.strategyProfilesClosed
      (And.intro E.bestResponseConditionClosed E.equilibriumExistenceClosed))

end GamesGraphsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse