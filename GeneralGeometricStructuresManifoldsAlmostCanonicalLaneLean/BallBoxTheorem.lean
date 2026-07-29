import HautevilleHouse.GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean.MitchellMeasure

namespace HautevilleHouse
namespace GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean

structure BallBoxTheoremPackage {A : AlmostRiemannianStructure}
    {C : CarnotCaratheodoryPackage A}
    {G : GromovHausdorffConvergencePackage C}
    (M : MitchellMeasurePackage G) where
  ballBoxComparison : Prop
  scaleInvariance : Prop
  exponentEstimate : Prop
  nilpotentApproximation : Prop

structure BallBoxTheoremEvidence {A : AlmostRiemannianStructure}
    {C : CarnotCaratheodoryPackage A}
    {G : GromovHausdorffConvergencePackage C}
    {M : MitchellMeasurePackage G}
    (B : BallBoxTheoremPackage M) where
  ballBoxComparisonClosed : B.ballBoxComparison
  scaleInvarianceClosed : B.scaleInvariance
  exponentEstimateClosed : B.exponentEstimate
  nilpotentApproximationClosed : B.nilpotentApproximation

def BallBoxTheoremClosed {A : AlmostRiemannianStructure}
    {C : CarnotCaratheodoryPackage A}
    {G : GromovHausdorffConvergencePackage C}
    {M : MitchellMeasurePackage G}
    (B : BallBoxTheoremPackage M) : Prop :=
  B.ballBoxComparison ∧ B.scaleInvariance ∧
  B.exponentEstimate ∧ B.nilpotentApproximation

theorem ball_box_theorem_closed_from_evidence {A : AlmostRiemannianStructure}
    {C : CarnotCaratheodoryPackage A}
    {G : GromovHausdorffConvergencePackage C}
    {M : MitchellMeasurePackage G}
    (B : BallBoxTheoremPackage M) (E : BallBoxTheoremEvidence B) :
    BallBoxTheoremClosed B := by
  exact And.intro E.ballBoxComparisonClosed
    (And.intro E.scaleInvarianceClosed
      (And.intro E.exponentEstimateClosed E.nilpotentApproximationClosed))

end GeneralGeometricStructuresManifoldsAlmostCanonicalLaneLean
end HautevilleHouse