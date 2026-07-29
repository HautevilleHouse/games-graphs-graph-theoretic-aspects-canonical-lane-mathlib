import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesGraphsGraphTheoreticAspectsCanonicalLaneLean

structure MechanismDesignPackage where
  agents : Type u
  outcomes : Type v
  mechanism : Prop
  incentiveCompatibility : Prop
  efficiency : Prop

structure MechanismDesignEvidence (M : MechanismDesignPackage) where
  mechanismClosed : M.mechanism
  incentiveCompatibilityClosed : M.incentiveCompatibility
  efficiencyClosed : M.efficiency

def MechanismDesignClosed (M : MechanismDesignPackage) : Prop :=
  M.mechanism ∧ M.incentiveCompatibility ∧ M.efficiency

theorem mechanism_design_closed_from_evidence (M : MechanismDesignPackage) (E : MechanismDesignEvidence M) : MechanismDesignClosed M := by
  exact And.intro E.mechanismClosed (And.intro E.incentiveCompatibilityClosed E.efficiencyClosed)

end GamesGraphsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse