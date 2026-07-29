import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean.CurvatureHomogeneous

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure SymmetricSpacePackage {H : HomogeneousSpacePackage} {R : ReductiveHomogeneousPackage H} {C : CurvatureHomogeneousPackage H R} where
  involutiveAutomorphism : Prop
  parallelCurvature : Prop
  locallySymmetric : Prop
  globallySymmetric : Prop

structure SymmetricSpaceEvidence {H : HomogeneousSpacePackage} {R : ReductiveHomogeneousPackage H} {C : CurvatureHomogeneousPackage H R} (S : SymmetricSpacePackage H R C) where
  involutiveAutomorphismClosed : S.involutiveAutomorphism
  parallelCurvatureClosed : S.parallelCurvature
  locallySymmetricClosed : S.locallySymmetric
  globallySymmetricClosed : S.globallySymmetric

def SymmetricSpaceClosed {H : HomogeneousSpacePackage} {R : ReductiveHomogeneousPackage H} {C : CurvatureHomogeneousPackage H R} (S : SymmetricSpacePackage H R C) : Prop :=
  S.involutiveAutomorphism ∧ S.parallelCurvature ∧ S.locallySymmetric ∧ S.globallySymmetric

theorem symmetric_space_closed_from_evidence {H : HomogeneousSpacePackage} {R : ReductiveHomogeneousPackage H} {C : CurvatureHomogeneousPackage H R} (S : SymmetricSpacePackage H R C) (E : SymmetricSpaceEvidence S) : SymmetricSpaceClosed S := by
  exact And.intro E.involutiveAutomorphismClosed (And.intro E.parallelCurvatureClosed (And.intro E.locallySymmetricClosed E.globallySymmetricClosed))

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse