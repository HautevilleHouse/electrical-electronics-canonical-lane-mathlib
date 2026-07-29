import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalElectronicsCanonicalLaneLean

structure ElectromagneticFieldPackage where
  maxwellEquations : Prop
  waveEquation : Prop
  gaugeInvariance : Prop
  energyMomentum : Prop
  radiation : Prop

structure ElectromagneticFieldEvidence (F : ElectromagneticFieldPackage) where
  maxwellEquationsClosed : F.maxwellEquations
  waveEquationClosed : F.waveEquation
  gaugeInvarianceClosed : F.gaugeInvariance
  energyMomentumClosed : F.energyMomentum
  radiationClosed : F.radiation

def ElectromagneticFieldClosed (F : ElectromagneticFieldPackage) : Prop :=
  F.maxwellEquations ∧ F.waveEquation ∧ F.gaugeInvariance ∧ F.energyMomentum ∧ F.radiation

theorem electromagnetic_field_closed_from_evidence (F : ElectromagneticFieldPackage) (E : ElectromagneticFieldEvidence F) :
    ElectromagneticFieldClosed F := by
  exact And.intro E.maxwellEquationsClosed
    (And.intro E.waveEquationClosed
      (And.intro E.gaugeInvarianceClosed
        (And.intro E.energyMomentumClosed E.radiationClosed)))

end ElectricalElectronicsCanonicalLaneLean
end HautevilleHouse