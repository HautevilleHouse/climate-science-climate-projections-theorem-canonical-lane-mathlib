import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsTheoremCanonicalLaneLean

structure ClimateProjectionsAdmittedObject where
  modelType : String
  projectionValidity : Prop
  conclusion : Prop

structure ClimateProjectionsAdmissibleClass where
  object : ClimateProjectionsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def climateProjectionsAdmittedClosure (A : ClimateProjectionsAdmissibleClass) : Prop :=
  A.object.conclusion

end ClimateScienceClimateProjectionsTheoremCanonicalLaneLean
end HautevilleHouse