import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure HomogeneousSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HomogeneousAdmittedObject where
  space : HomogeneousSpace
  homogeneousStructure : Prop
  riemannianMetric : Prop
  curvatureInvariants : Prop
  conclusion : homogeneousStructure ∧ riemannianMetric ∧ curvatureInvariants

structure HomogeneousEndgameState where
  object : HomogeneousAdmittedObject

def HomogeneousWitnessClosed (O : HomogeneousAdmittedObject) : Prop :=
  O.conclusion

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse