import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure HomogeneousManifoldPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  lieGroup : Type v
  groupTopology : TopologicalSpace lieGroup
  lieGroupStructure : Prop
  transitiveAction : Prop
  isotropySubgroup : Type w
  homogeneousStructure : Prop

structure HomogeneousManifoldEvidence (H : HomogeneousManifoldPackage) where
  lieGroupStructureClosed : H.lieGroupStructure
  transitiveActionClosed : H.transitiveAction
  homogeneousStructureClosed : H.homogeneousStructure

def HomogeneousManifoldClosed (H : HomogeneousManifoldPackage) : Prop :=
  H.lieGroupStructure ∧ H.transitiveAction ∧ H.homogeneousStructure

theorem homogeneous_manifold_closed_from_evidence (H : HomogeneousManifoldPackage)
    (E : HomogeneousManifoldEvidence H) : HomogeneousManifoldClosed H := by
  exact And.intro E.lieGroupStructureClosed
    (And.intro E.transitiveActionClosed E.homogeneousStructureClosed)

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse