import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsTheoremCanonicalLaneLean

structure ClimateProjectionsBridge where
  energyBalanceClosed : Prop
  milankovitchClosed : Prop
  isotopicClosed : Prop
  dansgaardOeschgerClosed : Prop
  projectionConsistency : Prop

structure ClimateProjectionsBridgeEvidence (B : ClimateProjectionsBridge) where
  energyBalanceClosedEvidence : B.energyBalanceClosed
  milankovitchClosedEvidence : B.milankovitchClosed
  isotopicClosedEvidence : B.isotopicClosed
  dansgaardOeschgerClosedEvidence : B.dansgaardOeschgerClosed
  projectionConsistencyClosed : B.projectionConsistency

def ClimateProjectionsBridgeClosed (B : ClimateProjectionsBridge) : Prop :=
  B.energyBalanceClosed ∧ B.milankovitchClosed ∧ B.isotopicClosed ∧ B.dansgaardOeschgerClosed ∧ B.projectionConsistency

theorem climate_projections_bridge_closed_from_evidence (B : ClimateProjectionsBridge) (E : ClimateProjectionsBridgeEvidence B) :
    ClimateProjectionsBridgeClosed B := by
  exact And.intro E.energyBalanceClosedEvidence
    (And.intro E.milankovitchClosedEvidence
      (And.intro E.isotopicClosedEvidence
        (And.intro E.dansgaardOeschgerClosedEvidence E.projectionConsistencyClosed)))

end ClimateScienceClimateProjectionsTheoremCanonicalLaneLean
end HautevilleHouse