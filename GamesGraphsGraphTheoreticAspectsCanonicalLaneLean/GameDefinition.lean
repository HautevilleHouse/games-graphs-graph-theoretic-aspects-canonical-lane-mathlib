import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesGraphsGraphTheoreticAspectsCanonicalLaneLean

structure Game where
  Players : Type u
  Actions : Type v
  Payoffs : Type w
  preference : Players → Actions → Payoffs

structure GameEvidence (G : Game) where
  playersClosed : Nonempty G.Players
  actionsClosed : Nonempty G.Actions
  preferenceDefined : ∀ p, G.preference p 0 = G.preference p 0

def GameClosed (G : Game) : Prop :=
  Nonempty G.Players ∧ Nonempty G.Actions

theorem game_closed_from_evidence (G : Game) (E : GameEvidence G) : GameClosed G := by
  exact And.intro E.playersClosed E.actionsClosed

end GamesGraphsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse