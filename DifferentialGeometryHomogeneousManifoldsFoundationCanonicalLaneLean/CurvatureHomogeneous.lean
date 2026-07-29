import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean.ReductiveHomogeneous

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure CurvatureHomogeneousPackage {H : HomogeneousSpacePackage} {R : ReductiveHomogeneousPackage H} where
  riemannianMetricGInvariant : Prop
  leviCivitaConnection : Prop
  riemannCurvatureTensorInvariant : Prop
  ricciTensorInvariant : Prop
  scalarCurvatureConstant : Prop

structure CurvatureHomogeneousEvidence {H : HomogeneousSpacePackage} {R : ReductiveHomogeneousPackage H} (C : CurvatureHomogeneousPackage H R) where
  riemannianMetricGInvariantClosed : C.riemannianMetricGInvariant
  leviCivitaConnectionClosed : C.leviCivitaConnection
  riemannCurvatureTensorInvariantClosed : C.riemannCurvatureTensorInvariant
  ricciTensorInvariantClosed : C.ricciTensorInvariant
  scalarCurvatureConstantClosed : C.scalarCurvatureConstant

def CurvatureHomogeneousClosed {H : HomogeneousSpacePackage} {R : ReductiveHomogeneousPackage H} (C : CurvatureHomogeneousPackage H R) : Prop :=
  C.riemannianMetricGInvariant ∧ C.leviCivitaConnection ∧ C.riemannCurvatureTensorInvariant ∧ C.ricciTensorInvariant ∧ C.scalarCurvatureConstant

theorem curvature_homogeneous_closed_from_evidence {H : HomogeneousSpacePackage} {R : ReductiveHomogeneousPackage H} (C : CurvatureHomogeneousPackage H R) (E : CurvatureHomogeneousEvidence C) : CurvatureHomogeneousClosed C := by
  exact And.intro E.riemannianMetricGInvariantClosed (And.intro E.leviCivitaConnectionClosed (And.intro E.riemannCurvatureTensorInvariantClosed (And.intro E.ricciTensorInvariantClosed E.scalarCurvatureConstantClosed)))

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse