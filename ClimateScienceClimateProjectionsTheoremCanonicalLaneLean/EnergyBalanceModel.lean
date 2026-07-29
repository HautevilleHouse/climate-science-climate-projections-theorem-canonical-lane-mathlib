import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsTheoremCanonicalLaneLean

structure EnergyBalanceModel where
  solarConstant : ℝ
  albedo : ℝ
  emissivity : ℝ
  surfaceTemperature : ℝ
  equilibriumTemperature : ℝ
  atmosphereLayerCount : ℕ

structure EnergyBalanceModelEvidence (E : EnergyBalanceModel) where
  solarConstantPositive : E.solarConstant > 0
  albedoBounded : 0 ≤ E.albedo ∧ E.albedo ≤ 1
  emissivityBounded : 0 ≤ E.emissivity ∧ E.emissivity ≤ 1
  equilibriumReached : E.surfaceTemperature = E.equilibriumTemperature

def EnergyBalanceModelClosed (E : EnergyBalanceModel) : Prop :=
  E.solarConstant > 0 ∧ 0 ≤ E.albedo ∧ E.albedo ≤ 1 ∧ 0 ≤ E.emissivity ∧ E.emissivity ≤ 1 ∧ E.surfaceTemperature = E.equilibriumTemperature

theorem energy_balance_model_closed_from_evidence (E : EnergyBalanceModel) (Ev : EnergyBalanceModelEvidence E) :
    EnergyBalanceModelClosed E := by
  rcases Ev with ⟨hsc, ⟨ha1, ha2⟩, ⟨he1, he2⟩, heq⟩
  exact ⟨hsc, ha1, ha2, he1, he2, heq⟩

end ClimateScienceClimateProjectionsTheoremCanonicalLaneLean
end HautevilleHouse