import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsTheoremCanonicalLaneLean

structure ClimateAdmittedObject where
  energyBalance : EnergyBalanceModel
  milankovitch : MilankovitchCycles
  isotopic : IsotopicPaleothermometry
  dansgaardOeschger : DansgaardOeschgerEvents
  conclusion : EnergyBalanceClosed energyBalance ∧ MilankovitchClosed milankovitch ∧ IsotopicPaleothermometryClosed isotopic ∧ DansgaardOeschgerClosed dansgaardOeschger

structure ClimateAdmissibleClass where
  object : ClimateAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def ClimateWitnessClosed (O : ClimateAdmittedObject) : Prop :=
  O.conclusion

end ClimateScienceClimateProjectionsTheoremCanonicalLaneLean
end HautevilleHouse