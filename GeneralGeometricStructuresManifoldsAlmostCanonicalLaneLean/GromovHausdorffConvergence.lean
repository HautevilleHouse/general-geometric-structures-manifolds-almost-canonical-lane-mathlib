import HautevilleHouse.GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean.CarnotCaratheodoryDistance

namespace HautevilleHouse
namespace GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean

structure GromovHausdorffConvergencePackage {A : AlmostRiemannianStructure}
    (C : CarnotCaratheodoryPackage A) where
  pointedMetricSpaces : Type u
  gromovHausdorffDistance : Type v
  precompactness : Prop
  limitSpace : Type w
  limitSpaceMetric : MetricSpace limitSpace
  tangentConeRecovery : Prop

structure GromovHausdorffConvergenceEvidence {A : AlmostRiemannianStructure}
    {C : CarnotCaratheodoryPackage A} (G : GromovHausdorffConvergencePackage C) where
  precompactnessClosed : G.precompactness
  tangentConeRecoveryClosed : G.tangentConeRecovery

def GromovHausdorffConvergenceClosed {A : AlmostRiemannianStructure}
    {C : CarnotCaratheodoryPackage A} (G : GromovHausdorffConvergencePackage C) : Prop :=
  G.precompactness ∧ G.tangentConeRecovery

theorem gromov_hausdorff_convergence_closed_from_evidence
    {A : AlmostRiemannianStructure} {C : CarnotCaratheodoryPackage A}
    (G : GromovHausdorffConvergencePackage C)
    (E : GromovHausdorffConvergenceEvidence G) : GromovHausdorffConvergenceClosed G := by
  exact And.intro E.precompactnessClosed E.tangentConeRecoveryClosed

end GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean
end HautevilleHouse