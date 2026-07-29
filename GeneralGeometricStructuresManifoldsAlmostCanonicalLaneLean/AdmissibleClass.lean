import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean

structure AdmissibleClass where
  object : AlmostRiemannianStructure
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AlmostRiemannianClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean
end HautevilleHouse