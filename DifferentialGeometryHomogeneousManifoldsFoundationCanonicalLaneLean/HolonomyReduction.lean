import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure HolonomyReductionPackage {H : HomogeneousSpacePackage} {h : H.smoothAction}
    (C : CurvatureInvariantsPackage h) where
  holonomyGroupReduced : Prop
  deRhamDecomposition : Prop
  bersteinDecomposition : Prop
  isometryGroup : Type u
  symmetricSpaceClassification : Prop

structure HolonomyReductionEvidence {H : HomogeneousSpacePackage} {h : H.smoothAction}
    {C : CurvatureInvariantsPackage h} (R : HolonomyReductionPackage C) where
  holonomyGroupReducedClosed : R.holonomyGroupReduced
  deRhamDecompositionClosed : R.deRhamDecomposition
  bersteinDecompositionClosed : R.bersteinDecomposition
  symmetricSpaceClassificationClosed : R.symmetricSpaceClassification

def HolonomyReductionClosed {H : HomogeneousSpacePackage} {h : H.smoothAction}
    {C : CurvatureInvariantsPackage h} (R : HolonomyReductionPackage C) : Prop :=
  R.holonomyGroupReduced ∧ R.deRhamDecomposition ∧ R.bersteinDecomposition ∧ R.symmetricSpaceClassification

theorem holonomy_reduction_closed_from_evidence {H : HomogeneousSpacePackage} {h : H.smoothAction}
    {C : CurvatureInvariantsPackage h} (R : HolonomyReductionPackage C)
    (E : HolonomyReductionEvidence R) : HolonomyReductionClosed R := by
  exact And.intro E.holonomyGroupReducedClosed
    (And.intro E.deRhamDecompositionClosed
      (And.intro E.bersteinDecompositionClosed E.symmetricSpaceClassificationClosed))

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse