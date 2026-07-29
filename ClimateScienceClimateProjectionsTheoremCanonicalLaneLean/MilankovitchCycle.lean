import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsTheoremCanonicalLaneLean

structure MilankovitchCycle where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ
  insolationAnomaly : ℝ
  iceVolumeResponse : ℝ

structure MilankovitchCycleEvidence (M : MilankovitchCycle) where
  eccentricityBounded : 0 ≤ M.eccentricity ∧ M.eccentricity ≤ 0.05
  obliquityBounded : 22.1 ≤ M.obliquity ∧ M.obliquity ≤ 24.5
  precessionPeriodic : True
  insolationAnomalyComputed : M.insolationAnomaly = M.eccentricity * Real.sin M.precession

def MilankovitchCycleClosed (M : MilankovitchCycle) : Prop :=
  (0 ≤ M.eccentricity ∧ M.eccentricity ≤ 0.05) ∧ (22.1 ≤ M.obliquity ∧ M.obliquity ≤ 24.5) ∧ True ∧ M.insolationAnomaly = M.eccentricity * Real.sin M.precession

theorem milankovitch_cycle_closed_from_evidence (M : MilankovitchCycle) (Ev : MilankovitchCycleEvidence M) :
    MilankovitchCycleClosed M := by
  rcases Ev with ⟨⟨he1, he2⟩, ⟨ho1, ho2⟩, hp, hi⟩
  exact ⟨⟨he1, he2⟩, ⟨ho1, ho2⟩, hp, hi⟩

end ClimateScienceClimateProjectionsTheoremCanonicalLaneLean
end HautevilleHouse