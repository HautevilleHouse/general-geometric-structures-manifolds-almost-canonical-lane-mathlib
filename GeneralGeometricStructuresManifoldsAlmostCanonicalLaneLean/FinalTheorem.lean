import HautevilleHouse.GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean

def ConstrainedGeneralGeometricClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_general_geometric_endgame (A : AdmissibleClass) :
    ConstrainedGeneralGeometricClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean
end HautevilleHouse