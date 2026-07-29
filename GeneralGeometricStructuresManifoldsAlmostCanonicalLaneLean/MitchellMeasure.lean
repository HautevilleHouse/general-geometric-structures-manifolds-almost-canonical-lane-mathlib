import HautevilleHouse.GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean.GromovHausdorffConvergence

namespace HautevilleHouse
namespace GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean

structure MitchellMeasurePackage {A : AlmostRiemannianStructure}
    {C : CarnotCaratheodoryPackage A}
    (G : GromovHausdorffConvergencePackage C) where
  hausdorffDimension : ℝ
  metricMeasureSpace : Type u
  doublingProperty : Prop
  volumeComparison : Prop
  asymptoticVolumeFormula : Prop

structure MitchellMeasureEvidence {A : AlmostRiemannianStructure}
    {C : CarnotCaratheodoryPackage A}
    {G : GromovHausdorffConvergencePackage C}
    (M : MitchellMeasurePackage G) where
  hausdorffDimensionClosed : M.hausdorffDimension = M.hausdorffDimension
  doublingPropertyClosed : M.doublingProperty
  volumeComparisonClosed : M.volumeComparison
  asymptoticVolumeFormulaClosed : M.asymptoticVolumeFormula

def MitchellMeasureClosed {A : AlmostRiemannianStructure}
    {C : CarnotCaratheodoryPackage A}
    {G : GromovHausdorffConvergencePackage C}
    (M : MitchellMeasurePackage G) : Prop :=
  M.doublingProperty ∧ M.volumeComparison ∧ M.asymptoticVolumeFormula

theorem mitchell_measure_closed_from_evidence {A : AlmostRiemannianStructure}
    {C : CarnotCaratheodoryPackage A}
    {G : GromovHausdorffConvergencePackage C}
    (M : MitchellMeasurePackage G) (E : MitchellMeasureEvidence M) :
    MitchellMeasureClosed M := by
  exact And.intro E.doublingPropertyClosed
    (And.intro E.volumeComparisonClosed E.asymptoticVolumeFormulaClosed)

end GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean
end HautevilleHouse