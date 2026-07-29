import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure HomogeneousSpacePackage where
  G : Type u
  H : Type v
  Ggroup : Group G
  Hsubgroup : Subgroup G H
  M : Type w
  action : G → M → M
  transitive : Prop
  smooth : Prop

structure HomogeneousSpaceEvidence (P : HomogeneousSpacePackage) where
  transitiveClosed : P.transitive
  smoothClosed : P.smooth

def HomogeneousSpaceClosed (P : HomogeneousSpacePackage) : Prop :=
  P.transitive ∧ P.smooth

theorem homogeneous_space_closed_from_evidence (P : HomogeneousSpacePackage)
    (E : HomogeneousSpaceEvidence P) : HomogeneousSpaceClosed P := by
  exact And.intro E.transitiveClosed E.smoothClosed

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
