import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean.InvariantConnection

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure HolonomyPackage {H : HomogeneousManifoldPackage}
    {C : InvariantConnectionPackage H} where
  holonomyGroup : Type u
  reducedHolonomy : Type v
  ambroseSingerTheorem : Prop
  holonomyInvariantUnderIsotropy : Prop

structure HolonomyEvidence {H : HomogeneousManifoldPackage}
    {C : InvariantConnectionPackage H} (P : HolonomyPackage C) where
  ambroseSingerTheoremClosed : P.ambroseSingerTheorem
  holonomyInvariantUnderIsotropyClosed : P.holonomyInvariantUnderIsotropy

def HolonomyClosed {H : HomogeneousManifoldPackage}
    {C : InvariantConnectionPackage H} (P : HolonomyPackage C) : Prop :=
  P.ambroseSingerTheorem ∧ P.holonomyInvariantUnderIsotropy

theorem holonomy_closed_from_evidence
    {H : HomogeneousManifoldPackage} {C : InvariantConnectionPackage H}
    (P : HolonomyPackage C) (E : HolonomyEvidence P) : HolonomyClosed P := by
  exact And.intro E.ambroseSingerTheoremClosed E.holonomyInvariantUnderIsotropyClosed

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse