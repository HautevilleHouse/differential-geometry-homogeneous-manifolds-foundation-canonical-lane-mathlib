import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean.SymmetricSpaces

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure HolonomyHomogeneousPackage {H : HomogeneousSpacePackage} {R : ReductiveHomogeneousPackage H} {C : CurvatureHomogeneousPackage H R} {S : SymmetricSpacePackage H R C} where
  holonomyGroup : Type u
  holonomyRepresentation : Prop
  holonomyReductive : Prop
  ambroseSingerTheorem : Prop
  deRhamDecomposition : Prop

structure HolonomyHomogeneousEvidence {H : HomogeneousSpacePackage} {R : ReductiveHomogeneousPackage H} {C : CurvatureHomogeneousPackage H R} {S : SymmetricSpacePackage H R C} (P : HolonomyHomogeneousPackage H R C S) where
  holonomyGroupClosed : P.holonomyGroup
  holonomyRepresentationClosed : P.holonomyRepresentation
  holonomyReductiveClosed : P.holonomyReductive
  ambroseSingerTheoremClosed : P.ambroseSingerTheorem
  deRhamDecompositionClosed : P.deRhamDecomposition

def HolonomyHomogeneousClosed {H : HomogeneousSpacePackage} {R : ReductiveHomogeneousPackage H} {C : CurvatureHomogeneousPackage H R} {S : SymmetricSpacePackage H R C} (P : HolonomyHomogeneousPackage H R C S) : Prop :=
  P.holonomyGroup ∧ P.holonomyRepresentation ∧ P.holonomyReductive ∧ P.ambroseSingerTheorem ∧ P.deRhamDecomposition

theorem holonomy_homogeneous_closed_from_evidence {H : HomogeneousSpacePackage} {R : ReductiveHomogeneousPackage H} {C : CurvatureHomogeneousPackage H R} {S : SymmetricSpacePackage H R C} (P : HolonomyHomogeneousPackage H R C S) (E : HolonomyHomogeneousEvidence P) : HolonomyHomogeneousClosed P := by
  exact And.intro E.holonomyGroupClosed (And.intro E.holonomyRepresentationClosed (And.intro E.holonomyReductiveClosed (And.intro E.ambroseSingerTheoremClosed E.deRhamDecompositionClosed)))

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse