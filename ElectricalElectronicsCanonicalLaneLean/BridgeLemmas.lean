import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalElectronicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ElectricalElectronicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElectricalElectronicsCanonicalLaneLean
end HautevilleHouse