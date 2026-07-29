import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsTheoremCanonicalLaneLean

structure IsotopicPaleothermometry where
  deltaO18 : ℝ
  temperature : ℝ
  calibrationSlope : ℝ
  calibrationIntercept : ℝ

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometry) where
  deltaO18Measured : I.deltaO18 ≠ 0
  calibrationSlopePositive : I.calibrationSlope > 0
  temperatureComputed : I.temperature = I.calibrationSlope * I.deltaO18 + I.calibrationIntercept

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometry) : Prop :=
  I.deltaO18 ≠ 0 ∧ I.calibrationSlope > 0 ∧ I.temperature = I.calibrationSlope * I.deltaO18 + I.calibrationIntercept

theorem isotopic_paleothermometry_closed_from_evidence (I : IsotopicPaleothermometry) (Ev : IsotopicPaleothermometryEvidence I) :
    IsotopicPaleothermometryClosed I := by
  rcases Ev with ⟨hd, hs, ht⟩
  exact ⟨hd, hs, ht⟩

end ClimateScienceClimateProjectionsTheoremCanonicalLaneLean
end HautevilleHouse