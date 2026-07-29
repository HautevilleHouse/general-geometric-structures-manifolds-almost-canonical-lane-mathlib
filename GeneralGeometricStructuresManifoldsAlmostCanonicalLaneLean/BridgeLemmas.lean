import HautevilleHouse.GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeneralGeometricWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean
end HautevilleHouse