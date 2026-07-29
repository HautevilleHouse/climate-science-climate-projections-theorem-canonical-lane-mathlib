import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceClimateProjectionsTheoremCanonicalLaneLean.ClimateProjectionsGateLemmas

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsTheoremCanonicalLaneLean

def ClimateProjectionsClosure (A : ClimateProjectionsAdmissibleClass) : Prop :=
  climateProjectionsBridgeClosed A ∧ climateProjectionsGateClosed A

theorem climate_projections_endgame (A : ClimateProjectionsAdmissibleClass) :
    ClimateProjectionsClosure A := by
  exact And.intro (bridge_from_climate_projections_admissible_class A) (gate_from_climate_projections_admissible_class A)

end ClimateScienceClimateProjectionsTheoremCanonicalLaneLean
end HautevilleHouse