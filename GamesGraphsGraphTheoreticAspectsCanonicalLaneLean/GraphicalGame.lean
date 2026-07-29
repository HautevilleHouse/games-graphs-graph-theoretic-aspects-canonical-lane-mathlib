import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesGraphsGraphTheoreticAspectsCanonicalLaneLean

structure GraphicalGamePackage where
  interactionGraph : Prop
  localPayoffs : Prop
  globalEquilibrium : Prop
  complexityBound : Prop

structure GraphicalGameEvidence (G : GraphicalGamePackage) where
  interactionGraphClosed : G.interactionGraph
  localPayoffsClosed : G.localPayoffs
  globalEquilibriumClosed : G.globalEquilibrium
  complexityBoundClosed : G.complexityBound

def GraphicalGameClosed (G : GraphicalGamePackage) : Prop :=
  G.interactionGraph ∧ G.localPayoffs ∧ G.globalEquilibrium ∧ G.complexityBound

theorem graphical_game_closed_from_evidence (G : GraphicalGamePackage)
    (E : GraphicalGameEvidence G) : GraphicalGameClosed G := by
  exact And.intro E.interactionGraphClosed
    (And.intro E.localPayoffsClosed
      (And.intro E.globalEquilibriumClosed E.complexityBoundClosed))

end GamesGraphsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse