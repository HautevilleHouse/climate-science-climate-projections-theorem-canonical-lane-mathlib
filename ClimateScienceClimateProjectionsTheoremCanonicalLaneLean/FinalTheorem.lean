import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceClimateProjectionsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsTheoremCanonicalLaneLean

def ConstrainedClimateProjectionClosure (A : ClimateAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_climate_projection_endgame (A : ClimateAdmissibleClass) : ConstrainedClimateProjectionClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateScienceClimateProjectionsTheoremCanonicalLaneLean
end HautevilleHouse