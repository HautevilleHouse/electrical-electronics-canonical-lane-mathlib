import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalElectronicsCanonicalLaneLean

structure SemiconductorPhysicsPackage where
  bandStructure : Type u
  pnJunctionModel : Prop
  transistorAction : Prop
  dopingProfile : Prop

structure SemiconductorPhysicsEvidence (S : SemiconductorPhysicsPackage) where
  pnJunctionModelClosed : S.pnJunctionModel
  transistorActionClosed : S.transistorAction
  dopingProfileClosed : S.dopingProfile

def SemiconductorPhysicsClosed (S : SemiconductorPhysicsPackage) : Prop :=
  S.pnJunctionModel ∧ S.transistorAction ∧ S.dopingProfile

theorem semiconductor_physics_closed_from_evidence (S : SemiconductorPhysicsPackage)
    (E : SemiconductorPhysicsEvidence S) : SemiconductorPhysicsClosed S := by
  exact And.intro E.pnJunctionModelClosed (And.intro E.transistorActionClosed E.dopingProfileClosed)

end ElectricalElectronicsCanonicalLaneLean
end HautevilleHouse