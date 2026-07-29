import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsTheoremCanonicalLaneLean

structure DansgaardOeschgerEvents where
  temperatureAnomaly : ℝ → ℝ
  eventTimestamps : List ℝ
  amplitude : ℝ
  duration : ℝ
  recurrencePattern : Prop

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEvents) where
  recurrencePatternClosed : D.recurrencePattern

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEvents) : Prop :=
  D.recurrencePattern

theorem dansgaard_oeschger_events_closed_from_evidence (D : DansgaardOeschgerEvents) (E : DansgaardOeschgerEventsEvidence D) :
    DansgaardOeschgerEventsClosed D := by
  exact E.recurrencePatternClosed

end ClimateScienceClimateProjectionsTheoremCanonicalLaneLean
end HautevilleHouse