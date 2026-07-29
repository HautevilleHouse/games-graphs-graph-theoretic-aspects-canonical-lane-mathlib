import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesGraphsGraphTheoreticAspectsCanonicalLaneLean

structure ExtensiveFormGamePackage where
  gameTree : Prop
  informationSets : Prop
  strategies : Prop
  subgamePerfectEquilibrium : Prop

structure ExtensiveFormGameEvidence (E : ExtensiveFormGamePackage) where
  gameTreeClosed : E.gameTree
  informationSetsClosed : E.informationSets
  strategiesClosed : E.strategies
  subgamePerfectEquilibriumClosed : E.subgamePerfectEquilibrium

def ExtensiveFormGameClosed (E : ExtensiveFormGamePackage) : Prop :=
  E.gameTree ∧ E.informationSets ∧ E.strategies ∧ E.subgamePerfectEquilibrium

theorem extensive_form_game_closed_from_evidence (E : ExtensiveFormGamePackage)
    (Ev : ExtensiveFormGameEvidence E) : ExtensiveFormGameClosed E := by
  exact And.intro Ev.gameTreeClosed
    (And.intro Ev.informationSetsClosed
      (And.intro Ev.strategiesClosed Ev.subgamePerfectEquilibriumClosed))

end GamesGraphsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse