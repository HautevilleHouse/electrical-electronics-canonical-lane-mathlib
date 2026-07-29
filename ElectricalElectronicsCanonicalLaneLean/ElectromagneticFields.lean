import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalElectronicsCanonicalLaneLean

structure ElectromagneticFieldsPackage where
  spacetimeDomain : Type u
  maxwellEquationsHold : Prop
  waveEquationDerived : Prop
  gaugeInvariance : Prop

structure ElectromagneticFieldsEvidence (E : ElectromagneticFieldsPackage) where
  maxwellEquationsHoldClosed : E.maxwellEquationsHold
  waveEquationDerivedClosed : E.waveEquationDerived
  gaugeInvarianceClosed : E.gaugeInvariance

def ElectromagneticFieldsClosed (E : ElectromagneticFieldsPackage) : Prop :=
  E.maxwellEquationsHold ∧ E.waveEquationDerived ∧ E.gaugeInvariance

theorem electromagnetic_fields_closed_from_evidence (E : ElectromagneticFieldsPackage)
    (Ev : ElectromagneticFieldsEvidence E) : ElectromagneticFieldsClosed E := by
  exact And.intro Ev.maxwellEquationsHoldClosed (And.intro Ev.waveEquationDerivedClosed Ev.gaugeInvarianceClosed)

end ElectricalElectronicsCanonicalLaneLean
end HautevilleHouse