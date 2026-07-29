import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceClimateProjectionsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsTheoremCanonicalLaneLean

def gateClosed (A : ClimateAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ClimateAdmissibleClass) : gateClosed A :=
  A.gateWitness

end ClimateScienceClimateProjectionsTheoremCanonicalLaneLean
end HautevilleHouse