import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean.HolonomyHomogeneous

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure InvariantTheoryPackage {H : HomogeneousSpacePackage} {R : ReductiveHomogeneousPackage H} {C : CurvatureHomogeneousPackage H R} {S : SymmetricSpacePackage H R C} {P : HolonomyHomogeneousPackage H R C S} where
  invariantPolynomials : Prop
  weylGroupAction : Prop
  chevalleyRestriction : Prop
  invariantTheoryComplete : Prop

structure InvariantTheoryEvidence {H : HomogeneousSpacePackage} {R : ReductiveHomogeneousPackage H} {C : CurvatureHomogeneousPackage H R} {S : SymmetricSpacePackage H R C} {P : HolonomyHomogeneousPackage H R C S} (I : InvariantTheoryPackage H R C S P) where
  invariantPolynomialsClosed : I.invariantPolynomials
  weylGroupActionClosed : I.weylGroupAction
  chevalleyRestrictionClosed : I.chevalleyRestriction
  invariantTheoryCompleteClosed : I.invariantTheoryComplete

def InvariantTheoryClosed {H : HomogeneousSpacePackage} {R : ReductiveHomogeneousPackage H} {C : CurvatureHomogeneousPackage H R} {S : SymmetricSpacePackage H R C} {P : HolonomyHomogeneousPackage H R C S} (I : InvariantTheoryPackage H R C S P) : Prop :=
  I.invariantPolynomials ∧ I.weylGroupAction ∧ I.chevalleyRestriction ∧ I.invariantTheoryComplete

theorem invariant_theory_closed_from_evidence {H : HomogeneousSpacePackage} {R : ReductiveHomogeneousPackage H} {C : CurvatureHomogeneousPackage H R} {S : SymmetricSpacePackage H R C} {P : HolonomyHomogeneousPackage H R C S} (I : InvariantTheoryPackage H R C S P) (E : InvariantTheoryEvidence I) : InvariantTheoryClosed I := by
  exact And.intro E.invariantPolynomialsClosed (And.intro E.weylGroupActionClosed (And.intro E.chevalleyRestrictionClosed E.invariantTheoryCompleteClosed))

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse