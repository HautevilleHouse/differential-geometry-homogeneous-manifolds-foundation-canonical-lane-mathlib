import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean.HomogeneousSpaceStructure

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure InvariantConnectionPackage {P : HomogeneousSpacePackage} where
  connection : Type u
  invariantUnderAction : Prop
  curvatureForm : Prop
  torsionForm : Prop
  invariantUnderActionClosed : invariantUnderAction
  curvatureFormClosed : curvatureForm
  torsionFormClosed : torsionForm

structure InvariantConnectionEvidence {P : HomogeneousSpacePackage}
    (C : InvariantConnectionPackage P) where
  invariantUnderActionClosed : C.invariantUnderAction
  curvatureFormClosed : C.curvatureForm
  torsionFormClosed : C.torsionForm

def InvariantConnectionClosed {P : HomogeneousSpacePackage}
    (C : InvariantConnectionPackage P) : Prop :=
  C.invariantUnderAction ∧ C.curvatureForm ∧ C.torsionForm

theorem invariant_connection_closed_from_evidence
    {P : HomogeneousSpacePackage} (C : InvariantConnectionPackage P)
    (E : InvariantConnectionEvidence C) : InvariantConnectionClosed C := by
  exact And.intro E.invariantUnderActionClosed
    (And.intro E.curvatureFormClosed E.torsionFormClosed)

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
