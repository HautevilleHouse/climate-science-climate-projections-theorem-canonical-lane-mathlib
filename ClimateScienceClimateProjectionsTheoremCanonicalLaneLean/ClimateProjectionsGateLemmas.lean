import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceClimateProjectionsTheoremCanonicalLaneLean.ClimateProjectionsAdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsTheoremCanonicalLaneLean

def climateProjectionsBridgeClosed (A : ClimateProjectionsAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_climate_projections_admissible_class (A : ClimateProjectionsAdmissibleClass) :
    climateProjectionsBridgeClosed A := by
  exact A.object.conclusion

def climateProjectionsGateClosed (A : ClimateProjectionsAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_climate_projections_admissible_class (A : ClimateProjectionsAdmissibleClass) :
    climateProjectionsGateClosed A := by
  exact A.gateWitness

end ClimateScienceClimateProjectionsTheoremCanonicalLaneLean
end HautevilleHouse