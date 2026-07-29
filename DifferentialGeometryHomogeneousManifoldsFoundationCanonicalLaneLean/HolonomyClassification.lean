import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure HolonomyClassificationPackage (H : HomogeneousManifoldPackage) where
  holonomyGroup : Type u
  holonomyAlgebra : Prop
  deRhamDecomposition : Prop
  symmetricSpaceCondition : Prop
  irreducibility : Prop
  classificationResult : Prop

structure HolonomyClassificationEvidence {H : HomogeneousManifoldPackage}
    (Hc : HolonomyClassificationPackage H) where
  holonomyGroupClosed : Hc.holonomyGroup
  holonomyAlgebraClosed : Hc.holonomyAlgebra
  deRhamDecompositionClosed : Hc.deRhamDecomposition
  symmetricSpaceConditionClosed : Hc.symmetricSpaceCondition
  irreducibilityClosed : Hc.irreducibility
  classificationResultClosed : Hc.classificationResult

def HolonomyClassificationClosed {H : HomogeneousManifoldPackage}
    (Hc : HolonomyClassificationPackage H) : Prop :=
  Hc.holonomyGroup ∧ Hc.holonomyAlgebra ∧ Hc.deRhamDecomposition ∧
  Hc.symmetricSpaceCondition ∧ Hc.irreducibility ∧ Hc.classificationResult

theorem holonomy_classification_closed_from_evidence
    {H : HomogeneousManifoldPackage} (Hc : HolonomyClassificationPackage H)
    (E : HolonomyClassificationEvidence Hc) : HolonomyClassificationClosed Hc := by
  exact And.intro E.holonomyGroupClosed
    (And.intro E.holonomyAlgebraClosed
      (And.intro E.deRhamDecompositionClosed
        (And.intro E.symmetricSpaceConditionClosed
          (And.intro E.irreducibilityClosed E.classificationResultClosed))))

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse