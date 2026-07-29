import GamesGraphsGraphTheoreticAspectsCanonicalLaneLean.GraphGameAdmissible

namespace HautevilleHouse
namespace GamesGraphsGraphTheoreticAspectsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GraphGameWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GamesGraphsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse