import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure InvariantMetricClassificationPackage (H : HomogeneousManifoldPackage) where
  invariantMetricExists : Prop
  ricciTensorCompatibility : Prop
  einsteinMetricCondition : Prop
  symmetricMetricCondition : Prop
  classificationOfInvariantMetrics : Prop

structure InvariantMetricClassificationEvidence {H : HomogeneousManifoldPackage}
    (I : InvariantMetricClassificationPackage H) where
  invariantMetricExistsClosed : I.invariantMetricExists
  ricciTensorCompatibilityClosed : I.ricciTensorCompatibility
  einsteinMetricConditionClosed : I.einsteinMetricCondition
  symmetricMetricConditionClosed : I.symmetricMetricCondition
  classificationOfInvariantMetricsClosed : I.classificationOfInvariantMetrics

def InvariantMetricClassificationClosed {H : HomogeneousManifoldPackage}
    (I : InvariantMetricClassificationPackage H) : Prop :=
  I.invariantMetricExists ∧ I.ricciTensorCompatibility ∧
  I.einsteinMetricCondition ∧ I.symmetricMetricCondition ∧ I.classificationOfInvariantMetrics

theorem invariant_metric_classification_closed_from_evidence
    {H : HomogeneousManifoldPackage} (I : InvariantMetricClassificationPackage H)
    (E : InvariantMetricClassificationEvidence I) : InvariantMetricClassificationClosed I := by
  exact And.intro E.invariantMetricExistsClosed
    (And.intro E.ricciTensorCompatibilityClosed
      (And.intro E.einsteinMetricConditionClosed
        (And.intro E.symmetricMetricConditionClosed E.classificationOfInvariantMetricsClosed)))

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse