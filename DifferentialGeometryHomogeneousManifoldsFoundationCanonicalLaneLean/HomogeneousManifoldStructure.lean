import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure HomogeneousManifoldPackage where
  underlyingManifold : Type u
  lieGroup : Type v
  smoothAction : Prop
  transitiveAction : Prop
  isotropySubgroupClosed : Prop
  reductiveStructure : Prop

structure HomogeneousManifoldEvidence (H : HomogeneousManifoldPackage) where
  smoothActionClosed : H.smoothAction
  transitiveActionClosed : H.transitiveAction
  isotropySubgroupClosedClosed : H.isotropySubgroupClosed
  reductiveStructureClosed : H.reductiveStructure

def HomogeneousManifoldClosed (H : HomogeneousManifoldPackage) : Prop :=
  H.smoothAction ∧ H.transitiveAction ∧ H.isotropySubgroupClosed ∧ H.reductiveStructure

theorem homogeneous_manifold_closed_from_evidence
    (H : HomogeneousManifoldPackage) (E : HomogeneousManifoldEvidence H) :
    HomogeneousManifoldClosed H := by
  exact And.intro E.smoothActionClosed
    (And.intro E.transitiveActionClosed
      (And.intro E.isotropySubgroupClosedClosed E.reductiveStructureClosed))

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse