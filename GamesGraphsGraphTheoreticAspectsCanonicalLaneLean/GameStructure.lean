import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesGraphsGraphTheoreticAspectsCanonicalLaneLean

structure GameGraph where
  Vertex : Type u
  Edge : Vertex → Vertex → Type v
  payoff : (V : Vertex) → Type w
  utilityOrder : Type u
  finitePlayerSet : Prop
  finiteActionSets : Prop
  finitePlayerSetTerm : finitePlayerSet
  finiteActionSetsTerm : finiteActionSets

structure GameStructurePackage where
  graph : GameGraph
  nashEquilibriumExistence : Prop
  mixedStrategies : Prop
  pureStrategies : Prop

structure GameStructureEvidence (G : GameStructurePackage) where
  nashEquilibriumExistenceClosed : G.nashEquilibriumExistence
  mixedStrategiesClosed : G.mixedStrategies
  pureStrategiesClosed : G.pureStrategies

def GameStructureClosed (G : GameStructurePackage) : Prop :=
  G.nashEquilibriumExistence ∧ G.mixedStrategies ∧ G.pureStrategies

theorem game_structure_closed_from_evidence (G : GameStructurePackage)
    (E : GameStructureEvidence G) : GameStructureClosed G := by
  exact And.intro E.nashEquilibriumExistenceClosed
    (And.intro E.mixedStrategiesClosed E.pureStrategiesClosed)

end GamesGraphsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse