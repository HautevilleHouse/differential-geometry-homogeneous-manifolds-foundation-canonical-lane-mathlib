import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure IndexTheoremPackage {H : HomogeneousSpacePackage} {h : H.smoothAction}
    (C : CurvatureInvariantsPackage h) (R : HolonomyReductionPackage C) where
  diracOperator : Type u
  indexComputed : Prop
  integereValued : Prop
  homotopyInvariant : Prop
  chernCharacter : Prop
  toddClass : Prop

structure IndexTheoremEvidence {H : HomogeneousSpacePackage} {h : H.smoothAction}
    {C : CurvatureInvariantsPackage h} {R : HolonomyReductionPackage C}
    (I : IndexTheoremPackage C R) where
  indexComputedClosed : I.indexComputed
  integereValuedClosed : I.integereValued
  homotopyInvariantClosed : I.homotopyInvariant

def IndexTheoremClosed {H : HomogeneousSpacePackage} {h : H.smoothAction}
    {C : CurvatureInvariantsPackage h} {R : HolonomyReductionPackage C}
    (I : IndexTheoremPackage C R) : Prop :=
  I.indexComputed ∧ I.integereValued ∧ I.homotopyInvariant

theorem index_theorem_closed_from_evidence {H : HomogeneousSpacePackage} {h : H.smoothAction}
    {C : CurvatureInvariantsPackage h} {R : HolonomyReductionPackage C}
    (I : IndexTheoremPackage C R) (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.indexComputedClosed
    (And.intro E.integereValuedClosed E.homotopyInvariantClosed)

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse