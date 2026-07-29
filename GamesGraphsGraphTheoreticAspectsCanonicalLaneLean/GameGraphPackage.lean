import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesGraphsGraphTheoreticAspectsCanonicalLaneLean

structure GameGraphPackage (V : Type) (E : V → V → Prop) where
  vertexSet : Set V
  edgeRelation : V → V → Prop
  finite : Fintype V
  noLoops : ∀ v : V, ¬ E v v
  symmetric : ∀ v w : V, E v w → E w v

structure GameGraphEvidence {V : Type} {E : V → V → Prop} (G : GameGraphPackage V E) where
  finiteClosed : Fintype V := G.finite
  noLoopsClosed : ∀ v : V, ¬ E v v := G.noLoops
  symmetricClosed : ∀ v w : V, E v w → E w v := G.symmetric

def GameGraphClosed {V : Type} {E : V → V → Prop} (G : GameGraphPackage V E) : Prop :=
  Fintype V ∧ (∀ v : V, ¬ E v v) ∧ (∀ v w : V, E v w → E w v)

theorem game_graph_closed_from_evidence
    {V : Type} {E : V → V → Prop} (G : GameGraphPackage V E) (Ev : GameGraphEvidence G) :
    GameGraphClosed G := by
  exact And.intro Ev.finiteClosed (And.intro Ev.noLoopsClosed Ev.symmetricClosed)

end GamesGraphsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse