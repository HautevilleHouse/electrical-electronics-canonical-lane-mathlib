import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalElectronicsCanonicalLaneLean

structure PowerSystemsPackage where
  acPowerAnalysis : Prop
  threePhaseSystems : Prop
  transformerModel : Prop
  powerFlow : Prop
  faultAnalysis : Prop

structure PowerSystemsEvidence (P : PowerSystemsPackage) where
  acPowerAnalysisClosed : P.acPowerAnalysis
  threePhaseSystemsClosed : P.threePhaseSystems
  transformerModelClosed : P.transformerModel
  powerFlowClosed : P.powerFlow
  faultAnalysisClosed : P.faultAnalysis

def PowerSystemsClosed (P : PowerSystemsPackage) : Prop :=
  P.acPowerAnalysis ∧ P.threePhaseSystems ∧ P.transformerModel ∧ P.powerFlow ∧ P.faultAnalysis

theorem power_systems_closed_from_evidence (P : PowerSystemsPackage) (E : PowerSystemsEvidence P) :
    PowerSystemsClosed P := by
  exact And.intro E.acPowerAnalysisClosed
    (And.intro E.threePhaseSystemsClosed
      (And.intro E.transformerModelClosed
        (And.intro E.powerFlowClosed E.faultAnalysisClosed)))

end ElectricalElectronicsCanonicalLaneLean
end HautevilleHouse
