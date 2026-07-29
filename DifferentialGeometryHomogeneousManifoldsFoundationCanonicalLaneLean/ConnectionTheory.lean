import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean

structure ConnectionTheoryPackage (H : HomogeneousManifoldPackage) where
  leviCivitaConnection : Prop
  torsionFree : Prop
  metricCompatible : Prop
  connectionCurvatureRelation : Prop
  parallelTransport : Prop
  bundleConnection : Prop

structure ConnectionTheoryEvidence {H : HomogeneousManifoldPackage}
    (C : ConnectionTheoryPackage H) where
  leviCivitaConnectionClosed : C.leviCivitaConnection
  torsionFreeClosed : C.torsionFree
  metricCompatibleClosed : C.metricCompatible
  connectionCurvatureRelationClosed : C.connectionCurvatureRelation
  parallelTransportClosed : C.parallelTransport
  bundleConnectionClosed : C.bundleConnection

def ConnectionTheoryClosed {H : HomogeneousManifoldPackage}
    (C : ConnectionTheoryPackage H) : Prop :=
  C.leviCivitaConnection ∧ C.torsionFree ∧ C.metricCompatible ∧
  C.connectionCurvatureRelation ∧ C.parallelTransport ∧ C.bundleConnection

theorem connection_theory_closed_from_evidence
    {H : HomogeneousManifoldPackage} (C : ConnectionTheoryPackage H)
    (E : ConnectionTheoryEvidence C) : ConnectionTheoryClosed C := by
  exact And.intro E.leviCivitaConnectionClosed
    (And.intro E.torsionFreeClosed
      (And.intro E.metricCompatibleClosed
        (And.intro E.connectionCurvatureRelationClosed
          (And.intro E.parallelTransportClosed E.bundleConnectionClosed))))

end DifferentialGeometryHomogeneousManifoldsFoundationCanonicalLaneLean
end HautevilleHouse