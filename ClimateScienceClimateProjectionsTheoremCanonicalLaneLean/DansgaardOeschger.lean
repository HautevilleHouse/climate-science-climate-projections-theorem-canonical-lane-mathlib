import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsTheoremCanonicalLaneLean

structure DansgaardOeschgerPackage where
  abruptWarmingEvent : Prop
  iceCoreRecord : Prop
  oceanCirculationShift : Prop
  abruptWarmingEventClosed : abruptWarmingEvent
  iceCoreRecordClosed : iceCoreRecord
  oceanCirculationShiftClosed : oceanCirculationShift

structure DansgaardOeschgerEvidence (D : DansgaardOeschgerPackage) where
  abruptWarmingEventClosed : D.abruptWarmingEvent
  iceCoreRecordClosed : D.iceCoreRecord
  oceanCirculationShiftClosed : D.oceanCirculationShift

def DansgaardOeschgerClosed (D : DansgaardOeschgerPackage) : Prop :=
  D.abruptWarmingEvent ∧ D.iceCoreRecord ∧ D.oceanCirculationShift

theorem dansgaard_oeschger_closed_from_evidence (D : DansgaardOeschgerPackage)
    (E : DansgaardOeschgerEvidence D) : DansgaardOeschgerClosed D := by
  exact And.intro E.abruptWarmingEventClosed (And.intro E.iceCoreRecordClosed E.oceanCirculationShiftClosed)

end ClimateScienceClimateProjectionsTheoremCanonicalLaneLean
end HautevilleHouse
