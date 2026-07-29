import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceClimateProjectionsTheoremCanonicalLaneLean.ClimateProjectionAdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsTheoremCanonicalLaneLean

def bridgeClosed (A : ClimateAdmissibleClass) : Prop :=
  ClimateWitnessClosed A.object

theorem bridge_from_admissible_class (A : ClimateAdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end ClimateScienceClimateProjectionsTheoremCanonicalLaneLean
end HautevilleHouse