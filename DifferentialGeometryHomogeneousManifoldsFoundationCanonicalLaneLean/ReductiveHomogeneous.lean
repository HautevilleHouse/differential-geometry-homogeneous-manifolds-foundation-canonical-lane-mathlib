import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean.HomogeneousSpaceStructure

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure ReductiveHomogeneousPackage {H : HomogeneousSpacePackage} where
  reductiveDecomposition : Prop
  adInvariantInnerProduct : Prop
  canonicalConnection : Prop
  isotropyRepresentation : Prop

structure ReductiveHomogeneousEvidence {H : HomogeneousSpacePackage} (R : ReductiveHomogeneousPackage H) where
  reductiveDecompositionClosed : R.reductiveDecomposition
  adInvariantInnerProductClosed : R.adInvariantInnerProduct
  canonicalConnectionClosed : R.canonicalConnection
  isotropyRepresentationClosed : R.isotropyRepresentation

def ReductiveHomogeneousClosed {H : HomogeneousSpacePackage} (R : ReductiveHomogeneousPackage H) : Prop :=
  R.reductiveDecomposition ∧ R.adInvariantInnerProduct ∧ R.canonicalConnection ∧ R.isotropyRepresentation

theorem reductive_homogeneous_closed_from_evidence {H : HomogeneousSpacePackage} (R : ReductiveHomogeneousPackage H) (E : ReductiveHomogeneousEvidence R) : ReductiveHomogeneousClosed R := by
  exact And.intro E.reductiveDecompositionClosed (And.intro E.adInvariantInnerProductClosed (And.intro E.canonicalConnectionClosed E.isotropyRepresentationClosed))

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse