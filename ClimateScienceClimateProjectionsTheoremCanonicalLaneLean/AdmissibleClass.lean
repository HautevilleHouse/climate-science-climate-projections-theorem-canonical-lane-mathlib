import ClimateScienceClimateProjectionsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ClimateProjectionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClimateProjectionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClimateScienceClimateProjectionsTheoremCanonicalLaneLean
end HautevilleHouse