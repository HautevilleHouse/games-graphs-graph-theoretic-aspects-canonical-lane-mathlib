import canonicalLaneMathlib.AdmissibleClass
import GamesGraphsGraphTheoreticAspectsCanonicalLaneLean.GameGraphObject

namespace HautevilleHouse
namespace GamesGraphsGraphTheoreticAspectsCanonicalLaneLean

structure MinimaxTheoremPackage where
  zeroSumFormulation : Prop
  valueEquality : Prop
  saddlePointCondition : Prop

structure MinimaxTheoremEvidence (M : MinimaxTheoremPackage) where
  zeroSumFormulationClosed : M.zeroSumFormulation
  valueEqualityClosed : M.valueEquality
  saddlePointConditionClosed : M.saddlePointCondition

def MinimaxTheoremClosed (M : MinimaxTheoremPackage) : Prop :=
  M.zeroSumFormulation ∧ M.valueEquality ∧ M.saddlePointCondition

theorem minimax_theorem_closed_from_evidence (M : MinimaxTheoremPackage) (E : MinimaxTheoremEvidence M) :
    MinimaxTheoremClosed M := by
  exact And.intro E.zeroSumFormulationClosed (And.intro E.valueEqualityClosed E.saddlePointConditionClosed)

end GamesGraphsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse