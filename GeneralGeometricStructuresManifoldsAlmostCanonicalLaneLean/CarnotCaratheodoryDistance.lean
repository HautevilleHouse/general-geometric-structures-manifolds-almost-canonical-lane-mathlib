import HautevilleHouse.GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean.AlmostRiemannianStructures

namespace HautevilleHouse
namespace GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean

structure CarnotCaratheodoryPackage (A : AlmostRiemannianStructure) where
  horizontalDistribution : Type u
  subRiemannianMetric : Type v
  carnotCaratheodoryDistance : Type w
  doublingProperty : Prop
  poincareInequality : Prop
  metricControlledGeometry : Prop

structure CarnotCaratheodoryEvidence {A : AlmostRiemannianStructure}
    (C : CarnotCaratheodoryPackage A) where
  doublingPropertyClosed : C.doublingProperty
  poincareInequalityClosed : C.poincareInequality
  metricControlledGeometryClosed : C.metricControlledGeometry

def CarnotCaratheodoryClosed {A : AlmostRiemannianStructure}
    (C : CarnotCaratheodoryPackage A) : Prop :=
  C.doublingProperty ∧ C.poincareInequality ∧ C.metricControlledGeometry

theorem carnot_caratheodory_closed_from_evidence {A : AlmostRiemannianStructure}
    (C : CarnotCaratheodoryPackage A) (E : CarnotCaratheodoryEvidence C) :
    CarnotCaratheodoryClosed C := by
  exact And.intro E.doublingPropertyClosed
    (And.intro E.poincareInequalityClosed E.metricControlledGeometryClosed)

end GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean
end HautevilleHouse