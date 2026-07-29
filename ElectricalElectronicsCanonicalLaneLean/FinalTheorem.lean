import canonicalLaneMathlib.AdmissibleClass
import ElectricalElectronicsCanonicalLaneLean.BridgeLemmas
import ElectricalElectronicsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ElectricalElectronicsCanonicalLaneLean

def ConstrainedElectricalElectronicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_electrical_electronics_endgame (A : AdmissibleClass) :
    ConstrainedElectricalElectronicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectricalElectronicsCanonicalLaneLean
end HautevilleHouse