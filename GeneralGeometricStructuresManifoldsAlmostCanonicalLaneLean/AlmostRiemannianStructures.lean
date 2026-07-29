import HautevilleHouse.GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean

structure AlmostRiemannianStructure where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : ContDiffManifold (𝓡 0) manifold
  almostMetric : Type v
  positiveDefinite : Prop
  smoothCompatibility : Prop
  flagStructure : Prop
  bracketGeneratingCondition : Prop
  admissibleFlag : Prop

structure AlmostRiemannianEvidence (A : AlmostRiemannianStructure) where
  positiveDefiniteClosed : A.positiveDefinite
  smoothCompatibilityClosed : A.smoothCompatibility
  flagStructureClosed : A.flagStructure
  bracketGeneratingConditionClosed : A.bracketGeneratingCondition
  admissibleFlagClosed : A.admissibleFlag

def AlmostRiemannianClosed (A : AlmostRiemannianStructure) : Prop :=
  A.positiveDefinite ∧ A.smoothCompatibility ∧ A.flagStructure ∧
  A.bracketGeneratingCondition ∧ A.admissibleFlag

theorem almost_riemannian_closed_from_evidence (A : AlmostRiemannianStructure)
    (E : AlmostRiemannianEvidence A) : AlmostRiemannianClosed A := by
  exact And.intro E.positiveDefiniteClosed
    (And.intro E.smoothCompatibilityClosed
      (And.intro E.flagStructureClosed
        (And.intro E.bracketGeneratingConditionClosed E.admissibleFlagClosed)))

end GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean
end HautevilleHouse