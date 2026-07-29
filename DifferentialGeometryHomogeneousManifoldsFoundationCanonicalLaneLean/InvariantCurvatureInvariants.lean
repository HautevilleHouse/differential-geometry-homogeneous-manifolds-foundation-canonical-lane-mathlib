import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean.InvariantConnection

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure CurvatureInvariantPackage {H : HomogeneousManifoldPackage}
    {C : InvariantConnectionPackage H} where
  riemannCurvature : Type u
  ricciTensor : Type v
  scalarCurvature : Type w
  sectionalCurvatureConstant : Prop
  einsteinCondition : Prop
  curvatureInvariantsWellDefined : Prop

structure CurvatureInvariantEvidence {H : HomogeneousManifoldPackage}
    {C : InvariantConnectionPackage H} (R : CurvatureInvariantPackage C) where
  sectionalCurvatureConstantClosed : R.sectionalCurvatureConstant
  einsteinConditionClosed : R.einsteinCondition
  curvatureInvariantsWellDefinedClosed : R.curvatureInvariantsWellDefined

def CurvatureInvariantsClosed {H : HomogeneousManifoldPackage}
    {C : InvariantConnectionPackage H} (R : CurvatureInvariantPackage C) : Prop :=
  R.sectionalCurvatureConstant ∧ R.einsteinCondition ∧ R.curvatureInvariantsWellDefined

theorem curvature_invariants_closed_from_evidence
    {H : HomogeneousManifoldPackage} {C : InvariantConnectionPackage H}
    (R : CurvatureInvariantPackage C) (E : CurvatureInvariantEvidence R) :
    CurvatureInvariantsClosed R := by
  exact And.intro E.sectionalCurvatureConstantClosed
    (And.intro E.einsteinConditionClosed E.curvatureInvariantsWellDefinedClosed)

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse