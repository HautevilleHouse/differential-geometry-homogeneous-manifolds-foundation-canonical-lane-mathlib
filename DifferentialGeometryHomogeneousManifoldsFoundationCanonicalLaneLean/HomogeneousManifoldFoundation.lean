import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure HomogeneousManifoldPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  transitiveGroupAction : Prop
  isotropySubgroupClosed : Prop
  reductiveDecomposition : Prop
  invariantMetric : Prop
  curvatureInvariants : Prop
  connectionTheory : Prop

structure HomogeneousManifoldEvidence (H : HomogeneousManifoldPackage) where
  smoothStructureClosed : H.smoothStructure
  transitiveGroupActionClosed : H.transitiveGroupAction
  isotropySubgroupClosedClosed : H.isotropySubgroupClosed
  reductiveDecompositionClosed : H.reductiveDecomposition
  invariantMetricClosed : H.invariantMetric
  curvatureInvariantsClosed : H.curvatureInvariants
  connectionTheoryClosed : H.connectionTheory

def HomogeneousManifoldClosed (H : HomogeneousManifoldPackage) : Prop :=
  H.smoothStructure ∧ H.transitiveGroupAction ∧ H.isotropySubgroupClosed ∧
  H.reductiveDecomposition ∧ H.invariantMetric ∧ H.curvatureInvariants ∧ H.connectionTheory

theorem homogeneous_manifold_closed_from_evidence (H : HomogeneousManifoldPackage)
    (E : HomogeneousManifoldEvidence H) : HomogeneousManifoldClosed H := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.transitiveGroupActionClosed
      (And.intro E.isotropySubgroupClosedClosed
        (And.intro E.reductiveDecompositionClosed
          (And.intro E.invariantMetricClosed
            (And.intro E.curvatureInvariantsClosed E.connectionTheoryClosed)))))

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse