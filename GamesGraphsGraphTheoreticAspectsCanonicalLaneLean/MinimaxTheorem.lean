import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesGraphsGraphTheoreticAspectsCanonicalLaneLean

structure MinimaxTheoremPackage where
  zeroSumGame : Prop
  mixedStrategies : Prop
  valueOfGame : Prop
  minimaxEquality : Prop

structure MinimaxTheoremEvidence (M : MinimaxTheoremPackage) where
  zeroSumGameClosed : M.zeroSumGame
  mixedStrategiesClosed : M.mixedStrategies
  valueOfGameClosed : M.valueOfGame
  minimaxEqualityClosed : M.minimaxEquality

def MinimaxTheoremClosed (M : MinimaxTheoremPackage) : Prop :=
  M.zeroSumGame ∧ M.mixedStrategies ∧ M.valueOfGame ∧ M.minimaxEquality

theorem minimax_theorem_closed_from_evidence (M : MinimaxTheoremPackage)
    (E : MinimaxTheoremEvidence M) : MinimaxTheoremClosed M := by
  exact And.intro E.zeroSumGameClosed
    (And.intro E.mixedStrategiesClosed
      (And.intro E.valueOfGameClosed E.minimaxEqualityClosed))

end GamesGraphsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse