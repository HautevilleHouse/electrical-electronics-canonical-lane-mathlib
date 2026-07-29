import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalElectronicsCanonicalLaneLean

structure AdmissibleClass where
  object : ElectricalElectronicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ElectricalElectronicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalElectronicsCanonicalLaneLean
end HautevilleHouse