import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean.InvariantConnection

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure CurvatureInvariantsPackage {P : HomogeneousSpacePackage}
    {C : InvariantConnectionPackage P} where
  ricciTensorCurvature : Prop
  scalarCurvature : Prop
  weylTensor : Prop
  ricciTensorCurvatureClosed : ricciTensorCurvature
  scalarCurvatureClosed : scalarCurvature
  weylTensorClosed : weylTensor

structure CurvatureInvariantsEvidence {P : HomogeneousSpacePackage}
    {C : InvariantConnectionPackage P} (I : CurvatureInvariantsPackage C) where
  ricciTensorCurvatureClosed : I.ricciTensorCurvature
  scalarCurvatureClosed : I.scalarCurvature
  weylTensorClosed : I.weylTensor

def CurvatureInvariantsClosed {P : HomogeneousSpacePackage}
    {C : InvariantConnectionPackage P} (I : CurvatureInvariantsPackage C) : Prop :=
  I.ricciTensorCurvature ∧ I.scalarCurvature ∧ I.weylTensor

theorem curvature_invariants_closed_from_evidence
    {P : HomogeneousSpacePackage} {C : InvariantConnectionPackage P}
    (I : CurvatureInvariantsPackage C) (E : CurvatureInvariantsEvidence I) :
    CurvatureInvariantsClosed I := by
  exact And.intro E.ricciTensorCurvatureClosed
    (And.intro E.scalarCurvatureClosed E.weylTensorClosed)

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
